open Ast
(* open Ast.IR1 *)
open Ast.V1
open Baselib

exception Error of string * Lexing.position

(* fonctions d'aide à la gestion des erreurs *)

let expr_pos expr =
  match expr with
  | Syntax.Value n  -> n.pos
  | Syntax.Var v  -> v.pos
  | Syntax.Call c -> c.pos

let errt expected given pos =
  raise (Error (Printf.sprintf "Expected %s but given %s"
                (string_of_type_t expected)
                (string_of_type_t given),
              pos))

(* analyse sémantique *)


let analyze_value value env =
  match value with
  | Syntax.Nil n  -> Nil, Nil_t
  | Syntax.Int i  -> Int i.value, Int_t
  | Syntax.Str s  -> Str s.value, Str_t
  | Syntax.Bool b -> Bool b.value, Bool_t

let rec analyze_expr expr env =
  match expr with
  | Syntax.Var v ->
     if Env.mem v.name env then
       IR1.Var v.name, Env.find v.name env
     else
       raise (Error (Printf.sprintf "Unbound variable '%s' !!" v.name,
                     v.pos))
  | Syntax.Value v ->  
    let a, b = (analyze_value v.value env) in
    IR1.Value a, b
  | Syntax.Call c ->
    match c.func with
      | "_not" ->
        let arg, arg_type = analyze_expr (List.hd c.args) env in
        if arg_type != Bool_t then
            raise (Error ("'_not' expects a boolean argument !!", c.pos));
        IR1.Call ("_not", [arg]), Bool_t
      | "scanf_int" ->
          if List.length c.args != 0 then
              raise (Error ("'scanf_int' expects no arguments", c.pos));
          IR1.Call ("scanf_int", []), Int_t
      | "scanf_str" ->
          if List.length c.args != 0 then
              raise (Error ("'scanf_str' expects no arguments", c.pos));
          IR1.Call ("scanf_str", []), Str_t
      | _ ->
        match Env.find_opt c.func env with
          | Some (Func_t (rt, at)) ->
            if List.length at != List.length c.args then
              raise (Error (Printf.sprintf "Expected %d arguments but given %d !!"
                              (List.length at) (List.length c.args), c.pos)) ;
            let args = List.map2 (fun eat a -> let aa, at = analyze_expr a env
                                              in if at = eat then aa
                                                  else errt eat at (expr_pos a))
                        at c.args in
            IR1.Call (c.func, args), rt
          | Some _ -> raise (Error (Printf.sprintf "'%s' is not a function !!" c.func,
                              c.pos))
          | None -> raise (Error (Printf.sprintf "Undefined function '%s' !!" c.func,
                            c.pos))

let rec analyze_instr instr env pile =
  match instr with
  | Syntax.Return r ->
     let ae, g = analyze_expr r.expr env in
     let t = Pile.pop pile in
     if (g != t) then
        errt t g r.pos
     else
        IR1.Return ae, env
  | Syntax.Decl d ->
    let new_env = Env.add d.name d.type_t env in
    let decl_instr = IR1.Decl d.name in
    (match d.init with
      | None -> (decl_instr, new_env)
      | Some init_expr ->
        let ae, et = analyze_expr init_expr env in
        if et = d.type_t then
          (IR1.Block [decl_instr; IR1.Assign (d.name, ae)], new_env)
        else
          errt d.type_t et d.pos)
  | Syntax.Block instrs ->
    let (block_instrs, new_env) = List.fold_left (fun (acc_instrs, acc_env) instr ->
      let (ai, new_env) = analyze_instr instr acc_env pile in
      (acc_instrs @ [ai], new_env)
    ) ([], env) instrs in
    (IR1.Block block_instrs, new_env)
  | Syntax.Assign a ->
    if (Env.mem a.var env) then
      let ae, et = analyze_expr a.expr env in
      let vt = Env.find a.var env in
      if (et = vt) then 
        IR1.Assign (a.var, ae), env
      else
        errt vt et a.pos
      else
        raise (Error 
          (Printf.sprintf "Unbound variable %s !!" 
            a.var, a.pos ) )
  | Syntax.Expr e ->
     let ae, et = analyze_expr e.expr env in
     IR1.Expr ae, env
  | Syntax.Cond c -> 
     let t, et  = analyze_expr c.test env in
     let y, et2 = analyze_block c.tblock env pile in
     let n, et3 = analyze_block c.fblock et2 pile in
     IR1.Cond (t, y, n), et3
  | Syntax.While w -> 
     let t, et  = analyze_expr w.test env in
     let e, et2 = analyze_block w.block env pile in
     IR1.While (t, e), et2
  | Syntax.AddAssign { var; expr; pos } ->
    if Env.mem var env then
        let ae, et = analyze_expr expr env in
        let vt = Env.find var env in
        if et = Int_t && vt = Int_t then 
            IR1.AddAssign (var, ae), env
        else
            errt Int_t et pos
    else
        raise (Error (Printf.sprintf "Unbound variable '%s' !!" var, pos))
  | Syntax.SubAssign { var; expr; pos } ->
    if Env.mem var env then
        let ae, et = analyze_expr expr env in
        let vt = Env.find var env in
        if et = Int_t && vt = Int_t then 
            IR1.SubAssign (var, ae), env
        else
            errt Int_t et pos
    else
        raise (Error (Printf.sprintf "Unbound variable '%s' !!" var, pos))
  | Syntax.MulAssign { var; expr; pos } ->
    if Env.mem var env then
        let ae, et = analyze_expr expr env in
        let vt = Env.find var env in
        if et = Int_t && vt = Int_t then 
            IR1.MulAssign (var, ae), env
        else
            errt Int_t et pos
    else
        raise (Error (Printf.sprintf "Unbound variable '%s' !!" var, pos))
  | Syntax.DivAssign { var; expr; pos } ->
    if Env.mem var env then
        let ae, et = analyze_expr expr env in
        let vt = Env.find var env in
        if et = Int_t && vt = Int_t then 
            IR1.DivAssign (var, ae), env
        else
            errt Int_t et pos
    else
        raise (Error (Printf.sprintf "Unbound variable '%s' !!" var, pos))

and analyze_block block env pile =
  match block with
  | [] -> [], env
  | instr :: rest ->
     let ai, new_env = analyze_instr instr env pile in
     let b, s_env = analyze_block rest new_env pile in
     ai :: b , new_env

let analyze_func func env pile =
  match func with
  | Syntax.Func f ->
    let args_env = List.fold_left (fun acc (t, name) -> Env.add name t acc) env f.args in
    Pile.push f.type_t pile;
    let block, new_env = analyze_block f.block args_env pile in
    IR1.Func (f.type_t, f.name, f.args, block),
    if (Env.mem f.name env) then
      raise (Error ("Function '" ^ f.name ^ "' already exists !!", f.pos))
    else
      Env.add f.name (Func_t (f.type_t, List.map (fun (t, _) -> t) f.args)) env

let rec analyze_prog prog env pile = 
  match prog with
  | [] -> [], env
  | func :: rest ->
     let ai, new_env = analyze_func func env pile in
     let bi, new_env2 = analyze_prog rest new_env pile in
     ai :: bi, new_env2

let analyze parsed =
  analyze_prog parsed Baselib._types_ (Pile.create())
