open Mips
open Ast.IR2
open Ast.V2


module Env = Map.Make (String)
exception Error of string
let buffer_size = 256

type cinfo =
  { code : Mips.instr list
  ; env : Mips.loc Env.t
  ; fpo : int
  ; counter : int
  ; return : string
  }
  
let compile_value v =
  match v with
  | Nil     -> [ Li (V0, 0) ]
  | Bool b  -> [ Li (V0, if b then 1 else 0) ]
  | Int n   -> [ Li (V0, n) ]
  | Data t  -> [ La (V0, Lbl t) ]
;;

let rec compile_expr e env =
  match e with
  | Value v -> compile_value v
  | Var v -> [ Lw (V0, Env.find v env) ]
  | Call (f, args) -> 
    (
      match f with
      | "scanf_int" ->
          [ Li (V0, Syscall.read_int)
          ; Syscall
          ; Sw (V0, Mem (SP, 0))
          ; Addi (SP, SP, -4)
          ]
      | "scanf_str" ->
          [ Li (V0, Syscall.read_str)
          ; La (A0, Lbl "buffer")
          ; Li (A1, buffer_size)
          ; Syscall
          ; Addi (SP, SP, -4)
          ]
      | "_not" ->
          let arg = List.hd args in 
          compile_expr arg env @ [Seq (V0, V0, Zero)]
      | _ -> 
          let ca =
            List.map
              (fun a -> compile_expr a env @ [ Addi (SP, SP, -4); Sw (V0, Mem (SP, 0)) ])
              args
          in
          List.flatten ca @ [ Jal f; Addi (SP, SP, 4 * List.length args) ]
    )
;;

let rec compile_instr i info env=
  match i with
  | Decl v ->
    let mem_loc = Mem (FP, -info.fpo) in
    let new_env = Env.add v mem_loc info.env in
    { info with env = new_env; fpo = info.fpo + 4; code = info.code @ [Sw (V0, mem_loc)] }
  | Return e ->
    { info with code = info.code
                     @ compile_expr e info.env 
                     @ [ B info.return ] 
    }
  | Expr e -> { info with code = info.code @ compile_expr e info.env }
  | Assign (lv, e) ->
    { info with
      code =
        (info.code
        @ compile_expr e info.env
        @ [ Sw (V0, Env.find lv info.env) ])
    }

  | Cond (c, t, e) ->
    let uniq = string_of_int info.counter in
    let ct = compile_block t { info with code = []; counter = info.counter + 1 } env in
    let ce = compile_block e { info with code = []; counter = ct.counter } env in
    { info with
      code =
        info.code
        @ compile_expr c info.env
        @ [ Beqz (V0, "else" ^ uniq) ]
        @ ct.code
        @ [ B ("endif" ^ uniq); Label ("else" ^ uniq) ]
        @ ce.code
        @ [ Label ("endif" ^ uniq) ]
    ; counter = ce.counter
    }
  | While (c, t) ->
    let uniq = string_of_int info.counter in
    let ct = compile_block t { info with code = []; counter = info.counter + 1 } env in
    { info with
      code =
        info.code
        @ compile_expr c info.env
        @ [ Label ("while" ^ uniq) ]
        @ [ Beqz (V0, "endwhile" ^ uniq) ]
        @ ct.code
        @ [ B ("while" ^ uniq) ]
        @ [ Label ("endwhile" ^ uniq) ]
    ; counter = ct.counter
    }
  | Block instrs ->
    List.fold_left (fun acc_info instr -> compile_instr instr acc_info env) info instrs
  | AddAssign (var, expr) ->
    let code_expr = compile_expr expr info.env in
    let var_loc = Env.find var info.env in
    { info with
      code = info.code @ code_expr
             @ [Lw (T0, var_loc); Add (V0, T0, V0); Sw (V0, var_loc)]
    }
  | SubAssign (var, expr) ->
    let code_expr = compile_expr expr info.env in
    let var_loc = Env.find var info.env in
    { info with
      code = info.code @ code_expr
            @ [Lw (T0, var_loc); Sub (V0, T0, V0); Sw (V0, var_loc)]
    }
  | MulAssign (var, expr) ->
    let code_expr = compile_expr expr info.env in
    let var_loc = Env.find var info.env in
    { info with
      code = info.code @ code_expr
            @ [Lw (T0, var_loc); Mul (V0, T0, V0); Sw (V0, var_loc)]
    }
  | DivAssign (var, expr) ->
    let code_expr = compile_expr expr info.env in
    let var_loc = Env.find var info.env in
    { info with
      code = info.code @ code_expr
            @ [Lw (T0, var_loc); Div (V0, T0, V0); Sw (V0, var_loc)]
    }

and compile_block b info env=
  match b with
  | []     -> info
  | i :: r -> compile_block r (compile_instr i info env) env
;;

let compile_def (Func (type_t, name, args, b)) counter env =
  if (Env.mem "main" env) then
    let cb =
      compile_block
        b
        { code = []
        ; env = List.fold_left
        (fun acc (arg_name, idx) -> Env.add arg_name (Mem (FP, 4 * idx)) acc)
        Env.empty
        (List.mapi (fun idx (arg_type, arg_name) -> (arg_name, idx + 2)) args)
        ; fpo = 8
        ; counter = counter + 1
        ; return = "ret" ^ string_of_int counter
        }
        env
    in
    ( cb.counter
    , [Label name]
      @ [Addi (SP, SP, -cb.fpo)]
      @ [Sw (RA, Mem (SP, cb.fpo - 4))]
      @ [Sw (FP, Mem (SP, cb.fpo - 8))]
      @ [Addi (FP, SP, cb.fpo - 4)]
      @ cb.code
      @ [Label cb.return]
      @ [Addi (SP, SP, cb.fpo)]
      @ [Lw (RA, Mem (FP, 0))]
      @ [Lw (FP, Mem (FP, -4))]
      @ [Jr RA]
    )
  else
    raise (Error (Printf.sprintf "main not found"))
;;

let rec compile_prog p counter env=
  match p with
  | [] -> []
  | d :: r ->
    let new_counter, cd = compile_def d counter env in
    cd @ compile_prog r new_counter env
;;

let compile (code, data) env =
  { text = compile_prog code 0 env @ Baselib.builtins
  ; data = List.map (fun (l, s) -> l, Asciiz s) data @ [("buffer", Asciiz (String.make buffer_size '\000'))]
  }
;;
