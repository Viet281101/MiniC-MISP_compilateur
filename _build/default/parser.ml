
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | Lxor
    | Lwhile
    | Lvar of (
# 19 "parser.mly"
       (string)
# 17 "parser.ml"
  )
    | Ltype of (
# 21 "parser.mly"
       (Ast.type_t)
# 22 "parser.ml"
  )
    | Lsub_assign
    | Lsub
    | Lstring of (
# 20 "parser.mly"
       (string)
# 29 "parser.ml"
  )
    | Lsrl
    | Lsll
    | Lscanf
    | Lsc
    | Lreturn
    | Lprintf
    | Lprint_str
    | Lprint_nl
    | Lprint_int
    | Lprint_bool
    | Lor
    | Lopar
    | Locbra
    | Lnot
    | Lneq
    | Lmul_assign
    | Lmul
    | Lmod
    | Llte
    | Llt
    | Lint of (
# 17 "parser.mly"
       (int)
# 54 "parser.ml"
  )
    | Lif
    | Lgte
    | Lgt
    | Lexit
    | Leq
    | Lend
    | Lelse
    | Ldiv_assign
    | Ldiv
    | Lcpar
    | Lcomma
    | Lccbra
    | Lbool of (
# 18 "parser.mly"
       (bool)
# 71 "parser.ml"
  )
    | Lassign
    | Land
    | Ladd_assign
    | Ladd
  
end

include MenhirBasics

# 1 "parser.mly"
  
  open Ast.Syntax

# 86 "parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState000 : ('s, _menhir_box_start) _menhir_state
    (** State 000.
        Stack shape : .
        Start symbol: start. *)

  | MenhirState003 : (('s, _menhir_box_start) _menhir_cell1_Ltype _menhir_cell0_Lvar, _menhir_box_start) _menhir_state
    (** State 003.
        Stack shape : Ltype Lvar.
        Start symbol: start. *)

  | MenhirState008 : ((('s, _menhir_box_start) _menhir_cell1_Ltype _menhir_cell0_Lvar, _menhir_box_start) _menhir_cell1_args, _menhir_box_start) _menhir_state
    (** State 008.
        Stack shape : Ltype Lvar args.
        Start symbol: start. *)

  | MenhirState010 : (('s, _menhir_box_start) _menhir_cell1_Lwhile, _menhir_box_start) _menhir_state
    (** State 010.
        Stack shape : Lwhile.
        Start symbol: start. *)

  | MenhirState012 : (('s, _menhir_box_start) _menhir_cell1_Lvar, _menhir_box_start) _menhir_state
    (** State 012.
        Stack shape : Lvar.
        Start symbol: start. *)

  | MenhirState022 : (('s, _menhir_box_start) _menhir_cell1_Lprintf, _menhir_box_start) _menhir_state
    (** State 022.
        Stack shape : Lprintf.
        Start symbol: start. *)

  | MenhirState024 : (('s, _menhir_box_start) _menhir_cell1_Lprint_str, _menhir_box_start) _menhir_state
    (** State 024.
        Stack shape : Lprint_str.
        Start symbol: start. *)

  | MenhirState029 : (('s, _menhir_box_start) _menhir_cell1_Lprint_int, _menhir_box_start) _menhir_state
    (** State 029.
        Stack shape : Lprint_int.
        Start symbol: start. *)

  | MenhirState031 : (('s, _menhir_box_start) _menhir_cell1_Lprint_bool, _menhir_box_start) _menhir_state
    (** State 031.
        Stack shape : Lprint_bool.
        Start symbol: start. *)

  | MenhirState032 : (('s, _menhir_box_start) _menhir_cell1_Lnot, _menhir_box_start) _menhir_state
    (** State 032.
        Stack shape : Lnot.
        Start symbol: start. *)

  | MenhirState041 : (('s, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lsub, _menhir_box_start) _menhir_state
    (** State 041.
        Stack shape : expr Lsub.
        Start symbol: start. *)

  | MenhirState043 : (('s, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lmul, _menhir_box_start) _menhir_state
    (** State 043.
        Stack shape : expr Lmul.
        Start symbol: start. *)

  | MenhirState045 : (('s, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Ldiv, _menhir_box_start) _menhir_state
    (** State 045.
        Stack shape : expr Ldiv.
        Start symbol: start. *)

  | MenhirState047 : (('s, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Ladd, _menhir_box_start) _menhir_state
    (** State 047.
        Stack shape : expr Ladd.
        Start symbol: start. *)

  | MenhirState049 : (('s, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lsrl, _menhir_box_start) _menhir_state
    (** State 049.
        Stack shape : expr Lsrl.
        Start symbol: start. *)

  | MenhirState051 : (('s, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lneq, _menhir_box_start) _menhir_state
    (** State 051.
        Stack shape : expr Lneq.
        Start symbol: start. *)

  | MenhirState053 : (('s, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lmod, _menhir_box_start) _menhir_state
    (** State 053.
        Stack shape : expr Lmod.
        Start symbol: start. *)

  | MenhirState055 : (('s, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Llte, _menhir_box_start) _menhir_state
    (** State 055.
        Stack shape : expr Llte.
        Start symbol: start. *)

  | MenhirState057 : (('s, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lgte, _menhir_box_start) _menhir_state
    (** State 057.
        Stack shape : expr Lgte.
        Start symbol: start. *)

  | MenhirState059 : (('s, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Llt, _menhir_box_start) _menhir_state
    (** State 059.
        Stack shape : expr Llt.
        Start symbol: start. *)

  | MenhirState061 : (('s, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lgt, _menhir_box_start) _menhir_state
    (** State 061.
        Stack shape : expr Lgt.
        Start symbol: start. *)

  | MenhirState063 : (('s, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Leq, _menhir_box_start) _menhir_state
    (** State 063.
        Stack shape : expr Leq.
        Start symbol: start. *)

  | MenhirState065 : (('s, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lsll, _menhir_box_start) _menhir_state
    (** State 065.
        Stack shape : expr Lsll.
        Start symbol: start. *)

  | MenhirState067 : (('s, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lnot, _menhir_box_start) _menhir_state
    (** State 067.
        Stack shape : expr Lnot.
        Start symbol: start. *)

  | MenhirState070 : (('s, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lxor, _menhir_box_start) _menhir_state
    (** State 070.
        Stack shape : expr Lxor.
        Start symbol: start. *)

  | MenhirState072 : (('s, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Land, _menhir_box_start) _menhir_state
    (** State 072.
        Stack shape : expr Land.
        Start symbol: start. *)

  | MenhirState074 : (('s, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lor, _menhir_box_start) _menhir_state
    (** State 074.
        Stack shape : expr Lor.
        Start symbol: start. *)

  | MenhirState087 : (('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 087.
        Stack shape : expr.
        Start symbol: start. *)

  | MenhirState091 : ((('s, _menhir_box_start) _menhir_cell1_Lwhile, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 091.
        Stack shape : Lwhile expr.
        Start symbol: start. *)

  | MenhirState093 : (('s, _menhir_box_start) _menhir_cell1_Lvar, _menhir_box_start) _menhir_state
    (** State 093.
        Stack shape : Lvar.
        Start symbol: start. *)

  | MenhirState096 : (('s, _menhir_box_start) _menhir_cell1_Lvar, _menhir_box_start) _menhir_state
    (** State 096.
        Stack shape : Lvar.
        Start symbol: start. *)

  | MenhirState099 : (('s, _menhir_box_start) _menhir_cell1_Lvar, _menhir_box_start) _menhir_state
    (** State 099.
        Stack shape : Lvar.
        Start symbol: start. *)

  | MenhirState102 : (('s, _menhir_box_start) _menhir_cell1_Lvar, _menhir_box_start) _menhir_state
    (** State 102.
        Stack shape : Lvar.
        Start symbol: start. *)

  | MenhirState105 : (('s, _menhir_box_start) _menhir_cell1_Lvar, _menhir_box_start) _menhir_state
    (** State 105.
        Stack shape : Lvar.
        Start symbol: start. *)

  | MenhirState108 : (('s, _menhir_box_start) _menhir_cell1_Ltype, _menhir_box_start) _menhir_state
    (** State 108.
        Stack shape : Ltype.
        Start symbol: start. *)

  | MenhirState111 : (('s, _menhir_box_start) _menhir_cell1_Lvar, _menhir_box_start) _menhir_state
    (** State 111.
        Stack shape : Lvar.
        Start symbol: start. *)

  | MenhirState114 : ((('s, _menhir_box_start) _menhir_cell1_Ltype, _menhir_box_start) _menhir_cell1_Lvar, _menhir_box_start) _menhir_state
    (** State 114.
        Stack shape : Ltype Lvar.
        Start symbol: start. *)

  | MenhirState119 : ((('s, _menhir_box_start) _menhir_cell1_Ltype, _menhir_box_start) _menhir_cell1_var_decl, _menhir_box_start) _menhir_state
    (** State 119.
        Stack shape : Ltype var_decl.
        Start symbol: start. *)

  | MenhirState122 : (('s, _menhir_box_start) _menhir_cell1_Lreturn, _menhir_box_start) _menhir_state
    (** State 122.
        Stack shape : Lreturn.
        Start symbol: start. *)

  | MenhirState126 : (('s, _menhir_box_start) _menhir_cell1_Lif, _menhir_box_start) _menhir_state
    (** State 126.
        Stack shape : Lif.
        Start symbol: start. *)

  | MenhirState129 : ((('s, _menhir_box_start) _menhir_cell1_Lif, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 129.
        Stack shape : Lif expr.
        Start symbol: start. *)

  | MenhirState134 : (((('s, _menhir_box_start) _menhir_cell1_Lif, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_instrs, _menhir_box_start) _menhir_state
    (** State 134.
        Stack shape : Lif expr instrs.
        Start symbol: start. *)

  | MenhirState137 : (('s, _menhir_box_start) _menhir_cell1_instr, _menhir_box_start) _menhir_state
    (** State 137.
        Stack shape : instr.
        Start symbol: start. *)

  | MenhirState147 : (('s, _menhir_box_start) _menhir_cell1_arg, _menhir_box_start) _menhir_state
    (** State 147.
        Stack shape : arg.
        Start symbol: start. *)

  | MenhirState152 : (('s, _menhir_box_start) _menhir_cell1_def, _menhir_box_start) _menhir_state
    (** State 152.
        Stack shape : def.
        Start symbol: start. *)


and ('s, 'r) _menhir_cell1_arg = 
  | MenhirCell1_arg of 's * ('s, 'r) _menhir_state * (Ast.type_t * string)

and ('s, 'r) _menhir_cell1_args = 
  | MenhirCell1_args of 's * ('s, 'r) _menhir_state * ((Ast.type_t * string) list)

and ('s, 'r) _menhir_cell1_def = 
  | MenhirCell1_def of 's * ('s, 'r) _menhir_state * (Ast.Syntax.def)

and ('s, 'r) _menhir_cell1_expr = 
  | MenhirCell1_expr of 's * ('s, 'r) _menhir_state * (Ast.Syntax.expr) * Lexing.position

and ('s, 'r) _menhir_cell1_instr = 
  | MenhirCell1_instr of 's * ('s, 'r) _menhir_state * (Ast.Syntax.instr)

and ('s, 'r) _menhir_cell1_instrs = 
  | MenhirCell1_instrs of 's * ('s, 'r) _menhir_state * (Ast.Syntax.block)

and ('s, 'r) _menhir_cell1_var_decl = 
  | MenhirCell1_var_decl of 's * ('s, 'r) _menhir_state * (string list)

and 's _menhir_cell0_Ladd = 
  | MenhirCell0_Ladd of 's * Lexing.position

and 's _menhir_cell0_Land = 
  | MenhirCell0_Land of 's * Lexing.position

and 's _menhir_cell0_Ldiv = 
  | MenhirCell0_Ldiv of 's * Lexing.position

and 's _menhir_cell0_Leq = 
  | MenhirCell0_Leq of 's * Lexing.position

and 's _menhir_cell0_Lgt = 
  | MenhirCell0_Lgt of 's * Lexing.position

and 's _menhir_cell0_Lgte = 
  | MenhirCell0_Lgte of 's * Lexing.position

and ('s, 'r) _menhir_cell1_Lif = 
  | MenhirCell1_Lif of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_Llt = 
  | MenhirCell0_Llt of 's * Lexing.position

and 's _menhir_cell0_Llte = 
  | MenhirCell0_Llte of 's * Lexing.position

and 's _menhir_cell0_Lmod = 
  | MenhirCell0_Lmod of 's * Lexing.position

and 's _menhir_cell0_Lmul = 
  | MenhirCell0_Lmul of 's * Lexing.position

and 's _menhir_cell0_Lneq = 
  | MenhirCell0_Lneq of 's * Lexing.position

and ('s, 'r) _menhir_cell1_Lnot = 
  | MenhirCell1_Lnot of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_Lnot = 
  | MenhirCell0_Lnot of 's * Lexing.position

and 's _menhir_cell0_Lor = 
  | MenhirCell0_Lor of 's * Lexing.position

and ('s, 'r) _menhir_cell1_Lprint_bool = 
  | MenhirCell1_Lprint_bool of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_Lprint_int = 
  | MenhirCell1_Lprint_int of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_Lprint_str = 
  | MenhirCell1_Lprint_str of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_Lprintf = 
  | MenhirCell1_Lprintf of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_Lreturn = 
  | MenhirCell1_Lreturn of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_Lsll = 
  | MenhirCell0_Lsll of 's * Lexing.position

and 's _menhir_cell0_Lsrl = 
  | MenhirCell0_Lsrl of 's * Lexing.position

and 's _menhir_cell0_Lsub = 
  | MenhirCell0_Lsub of 's * Lexing.position

and ('s, 'r) _menhir_cell1_Ltype = 
  | MenhirCell1_Ltype of 's * ('s, 'r) _menhir_state * (
# 21 "parser.mly"
       (Ast.type_t)
# 409 "parser.ml"
) * Lexing.position

and ('s, 'r) _menhir_cell1_Lvar = 
  | MenhirCell1_Lvar of 's * ('s, 'r) _menhir_state * (
# 19 "parser.mly"
       (string)
# 416 "parser.ml"
) * Lexing.position

and 's _menhir_cell0_Lvar = 
  | MenhirCell0_Lvar of 's * (
# 19 "parser.mly"
       (string)
# 423 "parser.ml"
) * Lexing.position

and ('s, 'r) _menhir_cell1_Lwhile = 
  | MenhirCell1_Lwhile of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_Lxor = 
  | MenhirCell0_Lxor of 's * Lexing.position

and _menhir_box_start = 
  | MenhirBox_start of (Ast.Syntax.prog) [@@unboxed]

let _menhir_action_01 =
  fun _1 _2 ->
    (
# 63 "parser.mly"
             ( (_1, _2) )
# 440 "parser.ml"
     : (Ast.type_t * string))

let _menhir_action_02 =
  fun () ->
    (
# 67 "parser.mly"
  ( [] )
# 448 "parser.ml"
     : ((Ast.type_t * string) list))

let _menhir_action_03 =
  fun _1 ->
    (
# 68 "parser.mly"
      ( [_1] )
# 456 "parser.ml"
     : ((Ast.type_t * string) list))

let _menhir_action_04 =
  fun _1 _3 ->
    (
# 69 "parser.mly"
                      ( _1 :: _3 )
# 464 "parser.ml"
     : ((Ast.type_t * string) list))

let _menhir_action_05 =
  fun _1 _2 _startpos__1_ ->
    (
# 157 "parser.mly"
                       (
    List.map (fun v -> Decl { name=v; type_t=_1; init=None; pos=_startpos__1_ }) _2
)
# 474 "parser.ml"
     : (Ast.Syntax.instr list))

let _menhir_action_06 =
  fun _1 _2 _4 _startpos__1_ ->
    (
# 160 "parser.mly"
                                      (
    match _2 with
    | v :: vs -> 
        [Decl { name=v; type_t=_1; init=Some _4; pos=_startpos__1_ }]
        @ (List.map (fun v -> Decl { name=v; type_t=_1; init=None; pos=_startpos__1_ }) vs)
    | [] -> raise (Failure "Empty variable declaration list")
)
# 488 "parser.ml"
     : (Ast.Syntax.instr list))

let _menhir_action_07 =
  fun _1 _2 _4 _7 _startpos__2_ ->
    (
# 72 "parser.mly"
                                                          (
  Func { type_t = _1; name = _2 ; args = _4 ; block = _7 ; pos = _startpos__2_ }
)
# 498 "parser.ml"
     : (Ast.Syntax.def))

let _menhir_action_08 =
  fun _1 _startpos__1_ ->
    (
# 124 "parser.mly"
       (
    Value { value=_1 ; pos=_startpos__1_ }
)
# 508 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_09 =
  fun _2 _startpos__1_ ->
    (
# 127 "parser.mly"
             ( 
    Call { func="_not"; args=[_2]; pos=_startpos__1_ } 
)
# 518 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_10 =
  fun _1 ->
    (
# 130 "parser.mly"
           ( _1 )
# 526 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_11 =
  fun _1 _startpos__1_ ->
    (
# 131 "parser.mly"
       ( 
    Var { name=_1; pos=_startpos__1_ }
)
# 536 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_12 =
  fun _1 _3 _startpos__1_ ->
    (
# 134 "parser.mly"
                             (
    Call { func=_1; args=_3; pos=_startpos__1_ }
)
# 546 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_13 =
  fun _startpos__1_ ->
    (
# 137 "parser.mly"
                             ( 
    Call { func="scanf_int"; args=[]; pos=_startpos__1_ } 
)
# 556 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_14 =
  fun _startpos__1_ ->
    (
# 140 "parser.mly"
                                ( 
    Call { func="scanf_str"; args=[]; pos=_startpos__1_ } 
)
# 566 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_15 =
  fun () ->
    (
# 146 "parser.mly"
  ( [] )
# 574 "parser.ml"
     : (Ast.Syntax.expr list))

let _menhir_action_16 =
  fun _1 ->
    (
# 147 "parser.mly"
       ( [_1] )
# 582 "parser.ml"
     : (Ast.Syntax.expr list))

let _menhir_action_17 =
  fun _1 _3 ->
    (
# 148 "parser.mly"
                            ( _1 :: _3 )
# 590 "parser.ml"
     : (Ast.Syntax.expr list))

let _menhir_action_18 =
  fun _2 _startpos__1_ ->
    (
# 86 "parser.mly"
                      (
    Return { expr=_2 ; pos=_startpos__1_ }
)
# 600 "parser.ml"
     : (Ast.Syntax.instr))

let _menhir_action_19 =
  fun _1 _3 _startpos__1_ ->
    (
# 89 "parser.mly"
                           (
    Assign { var=_1 ; expr=_3 ; pos=_startpos__1_ }
)
# 610 "parser.ml"
     : (Ast.Syntax.instr))

let _menhir_action_20 =
  fun _1 _2 _startpos__2_ ->
    (
# 92 "parser.mly"
                   (
    Decl { name=_2; type_t=_1; init=None; pos=_startpos__2_ }
)
# 620 "parser.ml"
     : (Ast.Syntax.instr))

let _menhir_action_21 =
  fun _1 _2 _4 _startpos__2_ ->
    (
# 95 "parser.mly"
                                  (
    Decl { name=_2; type_t=_1; init=Some _4; pos=_startpos__2_ }
)
# 630 "parser.ml"
     : (Ast.Syntax.instr))

let _menhir_action_22 =
  fun _1 _startpos__1_ ->
    (
# 98 "parser.mly"
            ( 
    Expr { expr=_1 ; pos=_startpos__1_ }
)
# 640 "parser.ml"
     : (Ast.Syntax.instr))

let _menhir_action_23 =
  fun _1 ->
    (
# 101 "parser.mly"
             ( Block _1 )
# 648 "parser.ml"
     : (Ast.Syntax.instr))

let _menhir_action_24 =
  fun _10 _3 _6 _startpos__1_ ->
    (
# 102 "parser.mly"
                                                                                 (
    Cond { test=_3 ; tblock=_6 ; fblock=_10 ; pos=_startpos__1_ }
)
# 658 "parser.ml"
     : (Ast.Syntax.instr))

let _menhir_action_25 =
  fun _3 _6 _startpos__1_ ->
    (
# 105 "parser.mly"
                                                     (
    While { test=_3 ; block=_6 ; pos=_startpos__1_ }
)
# 668 "parser.ml"
     : (Ast.Syntax.instr))

let _menhir_action_26 =
  fun _1 _3 _startpos__1_ ->
    (
# 108 "parser.mly"
                               (
    AddAssign { var=_1 ; expr=_3 ; pos=_startpos__1_ }
)
# 678 "parser.ml"
     : (Ast.Syntax.instr))

let _menhir_action_27 =
  fun _1 _3 _startpos__1_ ->
    (
# 111 "parser.mly"
                               (
    SubAssign { var=_1 ; expr=_3 ; pos=_startpos__1_ }
)
# 688 "parser.ml"
     : (Ast.Syntax.instr))

let _menhir_action_28 =
  fun _1 _3 _startpos__1_ ->
    (
# 114 "parser.mly"
                               (
    MulAssign { var=_1 ; expr=_3 ; pos=_startpos__1_ }
)
# 698 "parser.ml"
     : (Ast.Syntax.instr))

let _menhir_action_29 =
  fun _1 _3 _startpos__1_ ->
    (
# 117 "parser.mly"
                               (
    DivAssign { var=_1 ; expr=_3 ; pos=_startpos__1_ }
)
# 708 "parser.ml"
     : (Ast.Syntax.instr))

let _menhir_action_30 =
  fun _1 ->
    (
# 79 "parser.mly"
               ( [_1] )
# 716 "parser.ml"
     : (Ast.Syntax.block))

let _menhir_action_31 =
  fun _1 _2 ->
    (
# 80 "parser.mly"
               ( _1::_2 )
# 724 "parser.ml"
     : (Ast.Syntax.block))

let _menhir_action_32 =
  fun () ->
    (
# 81 "parser.mly"
               ( [] )
# 732 "parser.ml"
     : (Ast.Syntax.block))

let _menhir_action_33 =
  fun _1 _3 _startpos__2_ ->
    (
# 170 "parser.mly"
                     (
    Call { func="_add" ; args=[_1;_3] ; pos=_startpos__2_ }
)
# 742 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_34 =
  fun _1 _3 _startpos__2_ ->
    (
# 173 "parser.mly"
                     (
    Call { func="_sub" ; args=[_1;_3] ; pos=_startpos__2_ }
)
# 752 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_35 =
  fun _1 _3 _startpos__2_ ->
    (
# 176 "parser.mly"
                     (
    Call { func="_mul" ; args=[_1;_3] ; pos=_startpos__2_ }
)
# 762 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_36 =
  fun _1 _3 _startpos__2_ ->
    (
# 179 "parser.mly"
                     (
    Call { func="_div" ; args=[_1;_3] ; pos=_startpos__2_ }
)
# 772 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_37 =
  fun _1 _3 _startpos__2_ ->
    (
# 182 "parser.mly"
                     (
    Call { func="_mod" ; args=[_1;_3] ; pos=_startpos__2_ }
)
# 782 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_38 =
  fun _1 _3 _startpos__2_ ->
    (
# 185 "parser.mly"
                    (
    Call { func="_gt"  ; args=[_1;_3] ; pos=_startpos__2_ }
)
# 792 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_39 =
  fun _1 _3 _startpos__2_ ->
    (
# 188 "parser.mly"
                     (
    Call { func="_gte" ; args=[_1;_3] ; pos=_startpos__2_ }
)
# 802 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_40 =
  fun _1 _3 _startpos__2_ ->
    (
# 191 "parser.mly"
                    (
    Call { func="_lt"  ; args=[_1;_3] ; pos=_startpos__2_ }
)
# 812 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_41 =
  fun _1 _3 _startpos__2_ ->
    (
# 194 "parser.mly"
                    (
    Call { func="_lte" ; args=[_1;_3] ; pos=_startpos__2_ }
)
# 822 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_42 =
  fun _1 _3 _startpos__2_ ->
    (
# 197 "parser.mly"
                    (
    Call { func="_eq"  ; args=[_1;_3] ; pos=_startpos__2_ }
)
# 832 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_43 =
  fun _1 _3 _startpos__2_ ->
    (
# 200 "parser.mly"
                     (
    Call { func="_neq" ; args=[_1;_3] ; pos=_startpos__2_ }
)
# 842 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_44 =
  fun _1 _3 _startpos__2_ ->
    (
# 203 "parser.mly"
                     (
    Call { func="_and" ; args=[_1;_3] ; pos=_startpos__2_ }
)
# 852 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_45 =
  fun _1 _3 _startpos__2_ ->
    (
# 206 "parser.mly"
                    (
    Call { func="_or"  ; args=[_1;_3] ; pos=_startpos__2_ }
)
# 862 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_46 =
  fun _1 _3 _startpos__2_ ->
    (
# 209 "parser.mly"
                     (
    Call { func="_xor" ; args=[_1;_3] ; pos=_startpos__2_ }
)
# 872 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_47 =
  fun _1 _3 _startpos__2_ ->
    (
# 212 "parser.mly"
                     (
    Call { func="_not" ; args=[_1;_3] ; pos=_startpos__2_ }
)
# 882 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_48 =
  fun _1 _3 _startpos__2_ ->
    (
# 215 "parser.mly"
                     (
    Call { func="_sll" ; args=[_1;_3] ; pos=_startpos__2_ }
)
# 892 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_49 =
  fun _1 _3 _startpos__2_ ->
    (
# 218 "parser.mly"
                     (
    Call { func="_srl" ; args=[_1;_3] ; pos=_startpos__2_ }
)
# 902 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_50 =
  fun _3 _startpos__3_ ->
    (
# 221 "parser.mly"
                                 (
    Call { func="puti" ; args=[_3] ; pos=_startpos__3_ }
)
# 912 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_51 =
  fun _3 _startpos__3_ ->
    (
# 224 "parser.mly"
                                 (
    Call { func="puts" ; args=[_3] ; pos=_startpos__3_ }
)
# 922 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_52 =
  fun _3 _startpos__3_ ->
    (
# 227 "parser.mly"
                              (
    Call { func="puts" ; args=[_3] ; pos=_startpos__3_ }
)
# 932 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_53 =
  fun _3 _startpos__3_ ->
    (
# 230 "parser.mly"
                                  (
    Call { func="putb" ; args=[_3] ; pos=_startpos__3_ }
)
# 942 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_54 =
  fun _startpos__1_ ->
    (
# 233 "parser.mly"
                          (
    Call { func="putnl" ; args=[] ; pos=_startpos__1_ }
)
# 952 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_55 =
  fun _startpos__1_ ->
    (
# 236 "parser.mly"
                       (
    Call { func="geti" ; args=[] ; pos=_startpos__1_ }
)
# 962 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_56 =
  fun _startpos__1_ ->
    (
# 239 "parser.mly"
                      (
    Call { func="exit" ; args=[] ; pos=_startpos__1_ }
)
# 972 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_57 =
  fun _1 _startpos__1_ ->
    (
# 242 "parser.mly"
                     (
    Call { func=_1; args=[]; pos=_startpos__1_ }
)
# 982 "parser.ml"
     : (Ast.Syntax.expr))

let _menhir_action_58 =
  fun _1 ->
    (
# 57 "parser.mly"
           ( [_1] )
# 990 "parser.ml"
     : (Ast.Syntax.prog))

let _menhir_action_59 =
  fun _1 _2 ->
    (
# 58 "parser.mly"
           ( _1::_2 )
# 998 "parser.ml"
     : (Ast.Syntax.prog))

let _menhir_action_60 =
  fun _1 ->
    (
# 54 "parser.mly"
            ( _1 )
# 1006 "parser.ml"
     : (Ast.Syntax.prog))

let _menhir_action_61 =
  fun _1 _startpos__1_ ->
    (
# 249 "parser.mly"
           ( Int  { value=_1 ; pos=_startpos__1_ } )
# 1014 "parser.ml"
     : (Ast.Syntax.value))

let _menhir_action_62 =
  fun _1 _startpos__1_ ->
    (
# 250 "parser.mly"
           ( Bool { value=_1 ; pos=_startpos__1_ } )
# 1022 "parser.ml"
     : (Ast.Syntax.value))

let _menhir_action_63 =
  fun _1 _startpos__1_ ->
    (
# 251 "parser.mly"
           ( Str  { value=_1 ; pos=_startpos__1_ } )
# 1030 "parser.ml"
     : (Ast.Syntax.value))

let _menhir_action_64 =
  fun _1 ->
    (
# 153 "parser.mly"
       ( [_1] )
# 1038 "parser.ml"
     : (string list))

let _menhir_action_65 =
  fun _1 _3 ->
    (
# 154 "parser.mly"
                         ( _1 :: _3 )
# 1046 "parser.ml"
     : (string list))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | Ladd ->
        "Ladd"
    | Ladd_assign ->
        "Ladd_assign"
    | Land ->
        "Land"
    | Lassign ->
        "Lassign"
    | Lbool _ ->
        "Lbool"
    | Lccbra ->
        "Lccbra"
    | Lcomma ->
        "Lcomma"
    | Lcpar ->
        "Lcpar"
    | Ldiv ->
        "Ldiv"
    | Ldiv_assign ->
        "Ldiv_assign"
    | Lelse ->
        "Lelse"
    | Lend ->
        "Lend"
    | Leq ->
        "Leq"
    | Lexit ->
        "Lexit"
    | Lgt ->
        "Lgt"
    | Lgte ->
        "Lgte"
    | Lif ->
        "Lif"
    | Lint _ ->
        "Lint"
    | Llt ->
        "Llt"
    | Llte ->
        "Llte"
    | Lmod ->
        "Lmod"
    | Lmul ->
        "Lmul"
    | Lmul_assign ->
        "Lmul_assign"
    | Lneq ->
        "Lneq"
    | Lnot ->
        "Lnot"
    | Locbra ->
        "Locbra"
    | Lopar ->
        "Lopar"
    | Lor ->
        "Lor"
    | Lprint_bool ->
        "Lprint_bool"
    | Lprint_int ->
        "Lprint_int"
    | Lprint_nl ->
        "Lprint_nl"
    | Lprint_str ->
        "Lprint_str"
    | Lprintf ->
        "Lprintf"
    | Lreturn ->
        "Lreturn"
    | Lsc ->
        "Lsc"
    | Lscanf ->
        "Lscanf"
    | Lsll ->
        "Lsll"
    | Lsrl ->
        "Lsrl"
    | Lstring _ ->
        "Lstring"
    | Lsub ->
        "Lsub"
    | Lsub_assign ->
        "Lsub_assign"
    | Ltype _ ->
        "Ltype"
    | Lvar _ ->
        "Lvar"
    | Lwhile ->
        "Lwhile"
    | Lxor ->
        "Lxor"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37-39"]
  
  let rec _menhir_run_150 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_start =
    fun _menhir_stack _v ->
      let _1 = _v in
      let _v = _menhir_action_60 _1 in
      MenhirBox_start _v
  
  let rec _menhir_goto_prog : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState152 ->
          _menhir_run_153 _menhir_stack _v
      | MenhirState000 ->
          _menhir_run_150 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_153 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_def -> _ -> _menhir_box_start =
    fun _menhir_stack _v ->
      let MenhirCell1_def (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_59 _1 _2 in
      _menhir_goto_prog _menhir_stack _v _menhir_s
  
  let rec _menhir_run_001 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_Ltype (_menhir_stack, _menhir_s, _v, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lvar _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_Lvar (_menhir_stack, _v, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Lopar ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | Ltype _v ->
                  _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState003
              | Lcpar ->
                  let _v = _menhir_action_02 () in
                  _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState003
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_004 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lvar _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_2, _1) = (_v_0, _v) in
          let _v = _menhir_action_01 _1 _2 in
          (match (_tok : MenhirBasics.token) with
          | Lcomma ->
              let _menhir_stack = MenhirCell1_arg (_menhir_stack, _menhir_s, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | Ltype _v ->
                  _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState147
              | Lcpar ->
                  let _v = _menhir_action_02 () in
                  _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _v
              | _ ->
                  _eRR ())
          | Lcpar ->
              let _1 = _v in
              let _v = _menhir_action_03 _1 in
              _menhir_goto_args _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_148 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_arg -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_arg (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_04 _1 _3 in
      _menhir_goto_args _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_args : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState147 ->
          _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState003 ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_006 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Ltype _menhir_cell0_Lvar as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_args (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Locbra ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Lwhile ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
          | Lvar _v_0 ->
              _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState008
          | Ltype _v_1 ->
              _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState008
          | Lstring _v_2 ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos, _v_2) in
              let _v = _menhir_action_63 _1 _startpos__1_ in
              _menhir_run_038_spec_008 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lscanf ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
          | Lreturn ->
              _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
          | Lprintf ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
          | Lprint_str ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
          | Lprint_nl ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
          | Lprint_int ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
          | Lprint_bool ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
          | Lnot ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
          | Lint _v_4 ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos, _v_4) in
              let _v = _menhir_action_61 _1 _startpos__1_ in
              _menhir_run_038_spec_008 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lif ->
              _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
          | Lexit ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
          | Lend ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_32 () in
              _menhir_run_144 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | Lbool _v_7 ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos, _v_7) in
              let _v = _menhir_action_62 _1 _startpos__1_ in
              _menhir_run_038_spec_008 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_009 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_Lwhile (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lopar ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Lvar _v ->
              _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState010
          | Lstring _v ->
              let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_0, _v) in
              let _v = _menhir_action_63 _1 _startpos__1_ in
              _menhir_run_038_spec_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lscanf ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState010
          | Lprintf ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState010
          | Lprint_str ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState010
          | Lprint_nl ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState010
          | Lprint_int ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState010
          | Lprint_bool ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState010
          | Lnot ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState010
          | Lint _v ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_1, _v) in
              let _v = _menhir_action_61 _1 _startpos__1_ in
              _menhir_run_038_spec_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lexit ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState010
          | Lbool _v ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_2, _v) in
              let _v = _menhir_action_62 _1 _startpos__1_ in
              _menhir_run_038_spec_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_011 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lopar ->
          let _menhir_stack = MenhirCell1_Lvar (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd | Land | Lcomma | Lcpar | Ldiv | Leq | Lgt | Lgte | Llt | Llte | Lmod | Lmul | Lneq | Lnot | Lor | Lsc | Lsll | Lsrl | Lsub | Lxor ->
          let (_startpos__1_, _1) = (_startpos, _v) in
          let _v = _menhir_action_11 _1 _startpos__1_ in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_012 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Lvar -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lvar _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState012
      | Lstring _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos, _v) in
          let _v = _menhir_action_63 _1 _startpos__1_ in
          _menhir_run_038_spec_012 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lscanf ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState012
      | Lprintf ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState012
      | Lprint_str ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState012
      | Lprint_nl ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState012
      | Lprint_int ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState012
      | Lprint_bool ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState012
      | Lnot ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState012
      | Lint _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos, _v) in
          let _v = _menhir_action_61 _1 _startpos__1_ in
          _menhir_run_038_spec_012 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lexit ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState012
      | Lcpar ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_Lvar (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _v = _menhir_action_57 _1 _startpos__1_ in
          _menhir_goto_operator _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | Lbool _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos, _v) in
          let _v = _menhir_action_62 _1 _startpos__1_ in
          _menhir_run_038_spec_012 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_012 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Lvar -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState012 _tok
  
  and _menhir_run_086 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lxor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsrl ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsll ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lnot ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lneq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Leq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lcomma ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Lvar _v_0 ->
              _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState087
          | Lstring _v_1 ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_2, _v_1) in
              let _v = _menhir_action_63 _1 _startpos__1_ in
              _menhir_run_038_spec_087 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lscanf ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
          | Lprintf ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
          | Lprint_str ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
          | Lprint_nl ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
          | Lprint_int ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
          | Lprint_bool ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
          | Lnot ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
          | Lint _v_4 ->
              let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_5, _v_4) in
              let _v = _menhir_action_61 _1 _startpos__1_ in
              _menhir_run_038_spec_087 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lexit ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
          | Lbool _v_7 ->
              let _startpos_8 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_8, _v_7) in
              let _v = _menhir_action_62 _1 _startpos__1_ in
              _menhir_run_038_spec_087 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lcpar ->
              let _v = _menhir_action_15 () in
              _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | Land ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lcpar ->
          let _1 = _v in
          let _v = _menhir_action_16 _1 in
          _menhir_goto_expr_list _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_070 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_Lxor (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lvar _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState070
      | Lstring _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_0, _v) in
          let _v = _menhir_action_63 _1 _startpos__1_ in
          _menhir_run_038_spec_070 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lscanf ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
      | Lprintf ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
      | Lprint_str ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
      | Lprint_nl ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
      | Lprint_int ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
      | Lprint_bool ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
      | Lnot ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
      | Lint _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_1, _v) in
          let _v = _menhir_action_61 _1 _startpos__1_ in
          _menhir_run_038_spec_070 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lexit ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
      | Lbool _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_2, _v) in
          let _v = _menhir_action_62 _1 _startpos__1_ in
          _menhir_run_038_spec_070 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_070 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lxor -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState070 _tok
  
  and _menhir_run_071 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lxor as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsrl ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsll ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lnot ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lneq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Leq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Land ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lcomma | Lcpar | Lor | Lsc | Lxor ->
          let MenhirCell0_Lxor (_menhir_stack, _startpos__2_) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_46 _1 _3 _startpos__2_ in
          _menhir_goto_operator _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_041 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_Lsub (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lvar _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState041
      | Lstring _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_0, _v) in
          let _v = _menhir_action_63 _1 _startpos__1_ in
          _menhir_run_038_spec_041 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lscanf ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | Lprintf ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | Lprint_str ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | Lprint_nl ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | Lprint_int ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | Lprint_bool ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | Lnot ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | Lint _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_1, _v) in
          let _v = _menhir_action_61 _1 _startpos__1_ in
          _menhir_run_038_spec_041 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lexit ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | Lbool _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_2, _v) in
          let _v = _menhir_action_62 _1 _startpos__1_ in
          _menhir_run_038_spec_041 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_041 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lsub -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState041 _tok
  
  and _menhir_run_042 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lsub as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Land | Lcomma | Lcpar | Leq | Lgt | Lgte | Llt | Llte | Lmod | Lneq | Lnot | Lor | Lsc | Lsll | Lsrl | Lsub | Lxor ->
          let MenhirCell0_Lsub (_menhir_stack, _startpos__2_) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_34 _1 _3 _startpos__2_ in
          _menhir_goto_operator _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_043 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_Lmul (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lvar _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState043
      | Lstring _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_0, _v) in
          let _v = _menhir_action_63 _1 _startpos__1_ in
          _menhir_run_038_spec_043 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lscanf ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | Lprintf ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | Lprint_str ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | Lprint_nl ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | Lprint_int ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | Lprint_bool ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | Lnot ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | Lint _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_1, _v) in
          let _v = _menhir_action_61 _1 _startpos__1_ in
          _menhir_run_038_spec_043 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lexit ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | Lbool _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_2, _v) in
          let _v = _menhir_action_62 _1 _startpos__1_ in
          _menhir_run_038_spec_043 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_043 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lmul -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState043 _tok
  
  and _menhir_run_044 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lmul as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd | Land | Lcomma | Lcpar | Leq | Lgt | Lgte | Llt | Llte | Lmod | Lmul | Lneq | Lnot | Lor | Lsc | Lsll | Lsrl | Lsub | Lxor ->
          let MenhirCell0_Lmul (_menhir_stack, _startpos__2_) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_35 _1 _3 _startpos__2_ in
          _menhir_goto_operator _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_045 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_Ldiv (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lvar _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045
      | Lstring _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_0, _v) in
          let _v = _menhir_action_63 _1 _startpos__1_ in
          _menhir_run_038_spec_045 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lscanf ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | Lprintf ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | Lprint_str ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | Lprint_nl ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | Lprint_int ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | Lprint_bool ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | Lnot ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | Lint _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_1, _v) in
          let _v = _menhir_action_61 _1 _startpos__1_ in
          _menhir_run_038_spec_045 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lexit ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | Lbool _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_2, _v) in
          let _v = _menhir_action_62 _1 _startpos__1_ in
          _menhir_run_038_spec_045 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_045 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Ldiv -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_046 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Ldiv -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_Ldiv (_menhir_stack, _startpos__2_) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_36 _1 _3 _startpos__2_ in
      _menhir_goto_operator _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_goto_operator : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_10 _1 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_goto_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState008 ->
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState091 ->
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState129 ->
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState134 ->
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState137 ->
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState126 ->
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState122 ->
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState119 ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState114 ->
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState105 ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState102 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState099 ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState096 ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState093 ->
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState010 ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState087 ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState012 ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState022 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState024 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState029 ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState074 ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState070 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState031 ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState067 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState065 ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState063 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState061 ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState059 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState057 ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState055 ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState053 ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState051 ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState049 ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState047 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState043 ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState041 ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState032 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_139 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lxor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsrl ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsll ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsc ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos, _v) in
          let _v = _menhir_action_22 _1 _startpos__1_ in
          _menhir_goto_instr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | Lor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lnot ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lneq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Leq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Land ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_049 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_Lsrl (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lvar _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState049
      | Lstring _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_0, _v) in
          let _v = _menhir_action_63 _1 _startpos__1_ in
          _menhir_run_038_spec_049 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lscanf ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | Lprintf ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | Lprint_str ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | Lprint_nl ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | Lprint_int ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | Lprint_bool ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | Lnot ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | Lint _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_1, _v) in
          let _v = _menhir_action_61 _1 _startpos__1_ in
          _menhir_run_038_spec_049 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lexit ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | Lbool _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_2, _v) in
          let _v = _menhir_action_62 _1 _startpos__1_ in
          _menhir_run_038_spec_049 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_049 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lsrl -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState049 _tok
  
  and _menhir_run_050 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lsrl as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lneq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Leq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Land | Lcomma | Lcpar | Lnot | Lor | Lsc | Lsll | Lsrl | Lxor ->
          let MenhirCell0_Lsrl (_menhir_stack, _startpos__2_) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_49 _1 _3 _startpos__2_ in
          _menhir_goto_operator _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_051 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_Lneq (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lvar _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState051
      | Lstring _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_0, _v) in
          let _v = _menhir_action_63 _1 _startpos__1_ in
          _menhir_run_038_spec_051 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lscanf ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | Lprintf ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | Lprint_str ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | Lprint_nl ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | Lprint_int ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | Lprint_bool ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | Lnot ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | Lint _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_1, _v) in
          let _v = _menhir_action_61 _1 _startpos__1_ in
          _menhir_run_038_spec_051 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lexit ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | Lbool _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_2, _v) in
          let _v = _menhir_action_62 _1 _startpos__1_ in
          _menhir_run_038_spec_051 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_051 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lneq -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState051 _tok
  
  and _menhir_run_052 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lneq as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Land | Lcomma | Lcpar | Leq | Lneq | Lnot | Lor | Lsc | Lsll | Lsrl | Lxor ->
          let MenhirCell0_Lneq (_menhir_stack, _startpos__2_) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_43 _1 _3 _startpos__2_ in
          _menhir_goto_operator _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_053 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_Lmod (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lvar _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState053
      | Lstring _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_0, _v) in
          let _v = _menhir_action_63 _1 _startpos__1_ in
          _menhir_run_038_spec_053 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lscanf ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | Lprintf ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | Lprint_str ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | Lprint_nl ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | Lprint_int ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | Lprint_bool ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | Lnot ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | Lint _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_1, _v) in
          let _v = _menhir_action_61 _1 _startpos__1_ in
          _menhir_run_038_spec_053 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lexit ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | Lbool _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_2, _v) in
          let _v = _menhir_action_62 _1 _startpos__1_ in
          _menhir_run_038_spec_053 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_053 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lmod -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState053 _tok
  
  and _menhir_run_054 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lmod as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Land | Lcomma | Lcpar | Leq | Lgt | Lgte | Llt | Llte | Lmod | Lneq | Lnot | Lor | Lsc | Lsll | Lsrl | Lxor ->
          let MenhirCell0_Lmod (_menhir_stack, _startpos__2_) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_37 _1 _3 _startpos__2_ in
          _menhir_goto_operator _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_047 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_Ladd (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lvar _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState047
      | Lstring _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_0, _v) in
          let _v = _menhir_action_63 _1 _startpos__1_ in
          _menhir_run_038_spec_047 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lscanf ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | Lprintf ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | Lprint_str ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | Lprint_nl ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | Lprint_int ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | Lprint_bool ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | Lnot ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | Lint _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_1, _v) in
          let _v = _menhir_action_61 _1 _startpos__1_ in
          _menhir_run_038_spec_047 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lexit ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | Lbool _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_2, _v) in
          let _v = _menhir_action_62 _1 _startpos__1_ in
          _menhir_run_038_spec_047 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_047 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Ladd -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState047 _tok
  
  and _menhir_run_048 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Ladd as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd | Land | Lcomma | Lcpar | Leq | Lgt | Lgte | Llt | Llte | Lmod | Lneq | Lnot | Lor | Lsc | Lsll | Lsrl | Lsub | Lxor ->
          let MenhirCell0_Ladd (_menhir_stack, _startpos__2_) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_33 _1 _3 _startpos__2_ in
          _menhir_goto_operator _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_014 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lopar ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Lstring _ ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | Lcpar ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos in
                  let _v = _menhir_action_14 _startpos__1_ in
                  _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | Lint _ ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | Lcpar ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos in
                  let _v = _menhir_action_13 _startpos__1_ in
                  _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | Lcpar ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos in
              let _v = _menhir_action_55 _startpos__1_ in
              _menhir_goto_operator _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_021 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_Lprintf (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lopar ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Lvar _v ->
              _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState022
          | Lstring _v ->
              let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_0, _v) in
              let _v = _menhir_action_63 _1 _startpos__1_ in
              _menhir_run_038_spec_022 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lscanf ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
          | Lprintf ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
          | Lprint_str ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
          | Lprint_nl ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
          | Lprint_int ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
          | Lprint_bool ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
          | Lnot ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
          | Lint _v ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_1, _v) in
              let _v = _menhir_action_61 _1 _startpos__1_ in
              _menhir_run_038_spec_022 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lexit ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
          | Lbool _v ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_2, _v) in
              let _v = _menhir_action_62 _1 _startpos__1_ in
              _menhir_run_038_spec_022 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_022 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Lprintf -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState022 _tok
  
  and _menhir_run_081 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Lprintf as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lxor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsrl ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsll ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lnot ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lneq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Leq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lcpar ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_Lprintf (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_startpos__3_, _3) = (_startpos, _v) in
          let _v = _menhir_action_52 _3 _startpos__3_ in
          _menhir_goto_operator _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | Land ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_065 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_Lsll (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lvar _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState065
      | Lstring _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_0, _v) in
          let _v = _menhir_action_63 _1 _startpos__1_ in
          _menhir_run_038_spec_065 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lscanf ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | Lprintf ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | Lprint_str ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | Lprint_nl ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | Lprint_int ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | Lprint_bool ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | Lnot ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | Lint _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_1, _v) in
          let _v = _menhir_action_61 _1 _startpos__1_ in
          _menhir_run_038_spec_065 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lexit ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | Lbool _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_2, _v) in
          let _v = _menhir_action_62 _1 _startpos__1_ in
          _menhir_run_038_spec_065 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_065 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lsll -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState065 _tok
  
  and _menhir_run_066 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lsll as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsrl ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lneq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Leq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Land | Lcomma | Lcpar | Lnot | Lor | Lsc | Lsll | Lxor ->
          let MenhirCell0_Lsll (_menhir_stack, _startpos__2_) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_48 _1 _3 _startpos__2_ in
          _menhir_goto_operator _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_055 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_Llte (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lvar _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState055
      | Lstring _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_0, _v) in
          let _v = _menhir_action_63 _1 _startpos__1_ in
          _menhir_run_038_spec_055 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lscanf ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | Lprintf ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | Lprint_str ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | Lprint_nl ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | Lprint_int ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | Lprint_bool ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | Lnot ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | Lint _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_1, _v) in
          let _v = _menhir_action_61 _1 _startpos__1_ in
          _menhir_run_038_spec_055 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lexit ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | Lbool _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_2, _v) in
          let _v = _menhir_action_62 _1 _startpos__1_ in
          _menhir_run_038_spec_055 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_055 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Llte -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState055 _tok
  
  and _menhir_run_056 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Llte as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Land | Lcomma | Lcpar | Leq | Lgt | Llt | Llte | Lneq | Lnot | Lor | Lsc | Lsll | Lsrl | Lxor ->
          let MenhirCell0_Llte (_menhir_stack, _startpos__2_) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_41 _1 _3 _startpos__2_ in
          _menhir_goto_operator _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_057 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_Lgte (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lvar _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState057
      | Lstring _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_0, _v) in
          let _v = _menhir_action_63 _1 _startpos__1_ in
          _menhir_run_038_spec_057 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lscanf ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | Lprintf ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | Lprint_str ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | Lprint_nl ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | Lprint_int ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | Lprint_bool ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | Lnot ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | Lint _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_1, _v) in
          let _v = _menhir_action_61 _1 _startpos__1_ in
          _menhir_run_038_spec_057 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lexit ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | Lbool _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_2, _v) in
          let _v = _menhir_action_62 _1 _startpos__1_ in
          _menhir_run_038_spec_057 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_057 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lgte -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState057 _tok
  
  and _menhir_run_058 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lgte as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Land | Lcomma | Lcpar | Leq | Lgt | Lgte | Llt | Llte | Lneq | Lnot | Lor | Lsc | Lsll | Lsrl | Lxor ->
          let MenhirCell0_Lgte (_menhir_stack, _startpos__2_) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_39 _1 _3 _startpos__2_ in
          _menhir_goto_operator _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_023 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_Lprint_str (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lopar ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Lvar _v ->
              _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState024
          | Lstring _v ->
              let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_0, _v) in
              let _v = _menhir_action_63 _1 _startpos__1_ in
              _menhir_run_038_spec_024 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lscanf ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | Lprintf ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | Lprint_str ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | Lprint_nl ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | Lprint_int ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | Lprint_bool ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | Lnot ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | Lint _v ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_1, _v) in
              let _v = _menhir_action_61 _1 _startpos__1_ in
              _menhir_run_038_spec_024 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lexit ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | Lbool _v ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_2, _v) in
              let _v = _menhir_action_62 _1 _startpos__1_ in
              _menhir_run_038_spec_024 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_024 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Lprint_str -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState024 _tok
  
  and _menhir_run_079 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Lprint_str as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lxor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsrl ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsll ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lnot ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lneq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Leq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lcpar ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_Lprint_str (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_startpos__3_, _3) = (_startpos, _v) in
          let _v = _menhir_action_51 _3 _startpos__3_ in
          _menhir_goto_operator _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | Land ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_074 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_Lor (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lvar _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState074
      | Lstring _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_0, _v) in
          let _v = _menhir_action_63 _1 _startpos__1_ in
          _menhir_run_038_spec_074 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lscanf ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | Lprintf ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | Lprint_str ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | Lprint_nl ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | Lprint_int ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | Lprint_bool ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | Lnot ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | Lint _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_1, _v) in
          let _v = _menhir_action_61 _1 _startpos__1_ in
          _menhir_run_038_spec_074 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lexit ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | Lbool _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_2, _v) in
          let _v = _menhir_action_62 _1 _startpos__1_ in
          _menhir_run_038_spec_074 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_074 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lor -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState074 _tok
  
  and _menhir_run_075 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lor as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lxor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsrl ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsll ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lnot ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lneq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Leq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Land ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lcomma | Lcpar | Lor | Lsc ->
          let MenhirCell0_Lor (_menhir_stack, _startpos__2_) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_45 _1 _3 _startpos__2_ in
          _menhir_goto_operator _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_067 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_Lnot (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lvar _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState067
      | Lstring _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_0, _v) in
          let _v = _menhir_action_63 _1 _startpos__1_ in
          _menhir_run_038_spec_067 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lscanf ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | Lprintf ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | Lprint_str ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | Lprint_nl ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | Lprint_int ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | Lprint_bool ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | Lnot ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | Lint _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_1, _v) in
          let _v = _menhir_action_61 _1 _startpos__1_ in
          _menhir_run_038_spec_067 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lexit ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | Lbool _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_2, _v) in
          let _v = _menhir_action_62 _1 _startpos__1_ in
          _menhir_run_038_spec_067 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_067 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lnot -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState067 _tok
  
  and _menhir_run_068 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lnot as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsrl ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsll ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lnot ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lneq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Leq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Land | Lcomma | Lcpar | Lor | Lsc | Lxor ->
          let MenhirCell0_Lnot (_menhir_stack, _startpos__2_) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_47 _1 _3 _startpos__2_ in
          _menhir_goto_operator _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_059 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_Llt (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lvar _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState059
      | Lstring _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_0, _v) in
          let _v = _menhir_action_63 _1 _startpos__1_ in
          _menhir_run_038_spec_059 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lscanf ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | Lprintf ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | Lprint_str ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | Lprint_nl ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | Lprint_int ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | Lprint_bool ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | Lnot ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | Lint _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_1, _v) in
          let _v = _menhir_action_61 _1 _startpos__1_ in
          _menhir_run_038_spec_059 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lexit ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | Lbool _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_2, _v) in
          let _v = _menhir_action_62 _1 _startpos__1_ in
          _menhir_run_038_spec_059 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_059 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Llt -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState059 _tok
  
  and _menhir_run_060 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Llt as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Land | Lcomma | Lcpar | Leq | Llt | Lneq | Lnot | Lor | Lsc | Lsll | Lsrl | Lxor ->
          let MenhirCell0_Llt (_menhir_stack, _startpos__2_) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_40 _1 _3 _startpos__2_ in
          _menhir_goto_operator _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_061 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_Lgt (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lvar _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState061
      | Lstring _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_0, _v) in
          let _v = _menhir_action_63 _1 _startpos__1_ in
          _menhir_run_038_spec_061 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lscanf ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | Lprintf ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | Lprint_str ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | Lprint_nl ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | Lprint_int ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | Lprint_bool ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | Lnot ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | Lint _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_1, _v) in
          let _v = _menhir_action_61 _1 _startpos__1_ in
          _menhir_run_038_spec_061 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lexit ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | Lbool _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_2, _v) in
          let _v = _menhir_action_62 _1 _startpos__1_ in
          _menhir_run_038_spec_061 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_061 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lgt -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState061 _tok
  
  and _menhir_run_062 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Lgt as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Land | Lcomma | Lcpar | Leq | Lgt | Llt | Lneq | Lnot | Lor | Lsc | Lsll | Lsrl | Lxor ->
          let MenhirCell0_Lgt (_menhir_stack, _startpos__2_) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_38 _1 _3 _startpos__2_ in
          _menhir_goto_operator _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_025 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lopar ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Lcpar ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos in
              let _v = _menhir_action_54 _startpos__1_ in
              _menhir_goto_operator _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_028 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_Lprint_int (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lopar ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Lvar _v ->
              _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState029
          | Lstring _v ->
              let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_0, _v) in
              let _v = _menhir_action_63 _1 _startpos__1_ in
              _menhir_run_038_spec_029 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lscanf ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState029
          | Lprintf ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState029
          | Lprint_str ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState029
          | Lprint_nl ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState029
          | Lprint_int ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState029
          | Lprint_bool ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState029
          | Lnot ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState029
          | Lint _v ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_1, _v) in
              let _v = _menhir_action_61 _1 _startpos__1_ in
              _menhir_run_038_spec_029 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lexit ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState029
          | Lbool _v ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_2, _v) in
              let _v = _menhir_action_62 _1 _startpos__1_ in
              _menhir_run_038_spec_029 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_029 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Lprint_int -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState029 _tok
  
  and _menhir_run_077 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Lprint_int as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lxor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsrl ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsll ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lnot ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lneq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Leq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lcpar ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_Lprint_int (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_startpos__3_, _3) = (_startpos, _v) in
          let _v = _menhir_action_50 _3 _startpos__3_ in
          _menhir_goto_operator _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | Land ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_063 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_Leq (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lvar _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState063
      | Lstring _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_0, _v) in
          let _v = _menhir_action_63 _1 _startpos__1_ in
          _menhir_run_038_spec_063 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lscanf ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | Lprintf ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | Lprint_str ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | Lprint_nl ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | Lprint_int ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | Lprint_bool ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | Lnot ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | Lint _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_1, _v) in
          let _v = _menhir_action_61 _1 _startpos__1_ in
          _menhir_run_038_spec_063 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lexit ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | Lbool _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_2, _v) in
          let _v = _menhir_action_62 _1 _startpos__1_ in
          _menhir_run_038_spec_063 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_063 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Leq -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState063 _tok
  
  and _menhir_run_064 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Leq as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lneq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Land | Lcomma | Lcpar | Leq | Lnot | Lor | Lsc | Lsll | Lsrl | Lxor ->
          let MenhirCell0_Leq (_menhir_stack, _startpos__2_) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_42 _1 _3 _startpos__2_ in
          _menhir_goto_operator _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_030 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_Lprint_bool (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lopar ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Lvar _v ->
              _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState031
          | Lstring _v ->
              let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_0, _v) in
              let _v = _menhir_action_63 _1 _startpos__1_ in
              _menhir_run_038_spec_031 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lscanf ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
          | Lprintf ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
          | Lprint_str ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
          | Lprint_nl ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
          | Lprint_int ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
          | Lprint_bool ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
          | Lnot ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
          | Lint _v ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_1, _v) in
              let _v = _menhir_action_61 _1 _startpos__1_ in
              _menhir_run_038_spec_031 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lexit ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
          | Lbool _v ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_2, _v) in
              let _v = _menhir_action_62 _1 _startpos__1_ in
              _menhir_run_038_spec_031 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_031 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Lprint_bool -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState031 _tok
  
  and _menhir_run_069 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Lprint_bool as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lxor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsrl ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsll ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lnot ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lneq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Leq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lcpar ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_Lprint_bool (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_startpos__3_, _3) = (_startpos, _v) in
          let _v = _menhir_action_53 _3 _startpos__3_ in
          _menhir_goto_operator _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | Land ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_072 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_Land (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lvar _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState072
      | Lstring _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_0, _v) in
          let _v = _menhir_action_63 _1 _startpos__1_ in
          _menhir_run_038_spec_072 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lscanf ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | Lprintf ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | Lprint_str ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | Lprint_nl ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | Lprint_int ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | Lprint_bool ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | Lnot ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | Lint _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_1, _v) in
          let _v = _menhir_action_61 _1 _startpos__1_ in
          _menhir_run_038_spec_072 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lexit ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | Lbool _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_2, _v) in
          let _v = _menhir_action_62 _1 _startpos__1_ in
          _menhir_run_038_spec_072 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_072 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Land -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState072 _tok
  
  and _menhir_run_073 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr _menhir_cell0_Land as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsrl ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsll ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lnot ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lneq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Leq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Land | Lcomma | Lcpar | Lor | Lsc | Lxor ->
          let MenhirCell0_Land (_menhir_stack, _startpos__2_) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_44 _1 _3 _startpos__2_ in
          _menhir_goto_operator _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_032 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_Lnot (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lvar _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032
      | Lstring _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_0, _v) in
          let _v = _menhir_action_63 _1 _startpos__1_ in
          _menhir_run_038_spec_032 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lscanf ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | Lprintf ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | Lprint_str ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | Lprint_nl ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | Lprint_int ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | Lprint_bool ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | Lnot ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | Lint _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_1, _v) in
          let _v = _menhir_action_61 _1 _startpos__1_ in
          _menhir_run_038_spec_032 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lexit ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | Lbool _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_2, _v) in
          let _v = _menhir_action_62 _1 _startpos__1_ in
          _menhir_run_038_spec_032 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_032 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Lnot -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState032 _tok
  
  and _menhir_run_040 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Lnot as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsrl ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsll ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lnot ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lneq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Leq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Land | Lcomma | Lcpar | Lor | Lsc | Lxor ->
          let MenhirCell1_Lnot (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_09 _2 _startpos__1_ in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_034 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lopar ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Lcpar ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos in
              let _v = _menhir_action_56 _startpos__1_ in
              _menhir_goto_operator _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_instr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lwhile ->
          let _menhir_stack = MenhirCell1_instr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | Lvar _v_0 ->
          let _menhir_stack = MenhirCell1_instr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState137
      | Ltype _v_1 ->
          let _menhir_stack = MenhirCell1_instr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState137
      | Lstring _v_2 ->
          let _menhir_stack = MenhirCell1_instr (_menhir_stack, _menhir_s, _v) in
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos, _v_2) in
          let _v = _menhir_action_63 _1 _startpos__1_ in
          _menhir_run_038_spec_137 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lscanf ->
          let _menhir_stack = MenhirCell1_instr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | Lreturn ->
          let _menhir_stack = MenhirCell1_instr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | Lprintf ->
          let _menhir_stack = MenhirCell1_instr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | Lprint_str ->
          let _menhir_stack = MenhirCell1_instr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | Lprint_nl ->
          let _menhir_stack = MenhirCell1_instr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | Lprint_int ->
          let _menhir_stack = MenhirCell1_instr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | Lprint_bool ->
          let _menhir_stack = MenhirCell1_instr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | Lnot ->
          let _menhir_stack = MenhirCell1_instr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | Lint _v_4 ->
          let _menhir_stack = MenhirCell1_instr (_menhir_stack, _menhir_s, _v) in
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos, _v_4) in
          let _v = _menhir_action_61 _1 _startpos__1_ in
          _menhir_run_038_spec_137 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lif ->
          let _menhir_stack = MenhirCell1_instr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | Lexit ->
          let _menhir_stack = MenhirCell1_instr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | Lend ->
          let _menhir_stack = MenhirCell1_instr (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_32 () in
          _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | Lbool _v_7 ->
          let _menhir_stack = MenhirCell1_instr (_menhir_stack, _menhir_s, _v) in
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos, _v_7) in
          let _v = _menhir_action_62 _1 _startpos__1_ in
          _menhir_run_038_spec_137 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lccbra ->
          let _1 = _v in
          let _v = _menhir_action_30 _1 in
          _menhir_goto_instrs _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_092 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lsub_assign ->
          let _menhir_stack = MenhirCell1_Lvar (_menhir_stack, _menhir_s, _v, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Lvar _v_0 ->
              _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState093
          | Lstring _v_1 ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_2, _v_1) in
              let _v = _menhir_action_63 _1 _startpos__1_ in
              _menhir_run_038_spec_093 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lscanf ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
          | Lprintf ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
          | Lprint_str ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
          | Lprint_nl ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
          | Lprint_int ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
          | Lprint_bool ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
          | Lnot ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
          | Lint _v_4 ->
              let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_5, _v_4) in
              let _v = _menhir_action_61 _1 _startpos__1_ in
              _menhir_run_038_spec_093 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lexit ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
          | Lbool _v_7 ->
              let _startpos_8 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_8, _v_7) in
              let _v = _menhir_action_62 _1 _startpos__1_ in
              _menhir_run_038_spec_093 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | _ ->
              _eRR ())
      | Lopar ->
          let _menhir_stack = MenhirCell1_Lvar (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul_assign ->
          let _menhir_stack = MenhirCell1_Lvar (_menhir_stack, _menhir_s, _v, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Lvar _v_10 ->
              _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v_10 MenhirState096
          | Lstring _v_11 ->
              let _startpos_12 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_12, _v_11) in
              let _v = _menhir_action_63 _1 _startpos__1_ in
              _menhir_run_038_spec_096 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lscanf ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | Lprintf ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | Lprint_str ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | Lprint_nl ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | Lprint_int ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | Lprint_bool ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | Lnot ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | Lint _v_14 ->
              let _startpos_15 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_15, _v_14) in
              let _v = _menhir_action_61 _1 _startpos__1_ in
              _menhir_run_038_spec_096 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lexit ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | Lbool _v_17 ->
              let _startpos_18 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_18, _v_17) in
              let _v = _menhir_action_62 _1 _startpos__1_ in
              _menhir_run_038_spec_096 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | _ ->
              _eRR ())
      | Ldiv_assign ->
          let _menhir_stack = MenhirCell1_Lvar (_menhir_stack, _menhir_s, _v, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Lvar _v_20 ->
              _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v_20 MenhirState099
          | Lstring _v_21 ->
              let _startpos_22 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_22, _v_21) in
              let _v = _menhir_action_63 _1 _startpos__1_ in
              _menhir_run_038_spec_099 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lscanf ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
          | Lprintf ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
          | Lprint_str ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
          | Lprint_nl ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
          | Lprint_int ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
          | Lprint_bool ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
          | Lnot ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
          | Lint _v_24 ->
              let _startpos_25 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_25, _v_24) in
              let _v = _menhir_action_61 _1 _startpos__1_ in
              _menhir_run_038_spec_099 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lexit ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
          | Lbool _v_27 ->
              let _startpos_28 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_28, _v_27) in
              let _v = _menhir_action_62 _1 _startpos__1_ in
              _menhir_run_038_spec_099 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | _ ->
              _eRR ())
      | Lassign ->
          let _menhir_stack = MenhirCell1_Lvar (_menhir_stack, _menhir_s, _v, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Lvar _v_30 ->
              _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v_30 MenhirState102
          | Lstring _v_31 ->
              let _startpos_32 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_32, _v_31) in
              let _v = _menhir_action_63 _1 _startpos__1_ in
              _menhir_run_038_spec_102 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lscanf ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
          | Lprintf ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
          | Lprint_str ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
          | Lprint_nl ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
          | Lprint_int ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
          | Lprint_bool ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
          | Lnot ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
          | Lint _v_34 ->
              let _startpos_35 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_35, _v_34) in
              let _v = _menhir_action_61 _1 _startpos__1_ in
              _menhir_run_038_spec_102 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lexit ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
          | Lbool _v_37 ->
              let _startpos_38 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_38, _v_37) in
              let _v = _menhir_action_62 _1 _startpos__1_ in
              _menhir_run_038_spec_102 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | _ ->
              _eRR ())
      | Ladd_assign ->
          let _menhir_stack = MenhirCell1_Lvar (_menhir_stack, _menhir_s, _v, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Lvar _v_40 ->
              _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v_40 MenhirState105
          | Lstring _v_41 ->
              let _startpos_42 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_42, _v_41) in
              let _v = _menhir_action_63 _1 _startpos__1_ in
              _menhir_run_038_spec_105 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lscanf ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
          | Lprintf ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
          | Lprint_str ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
          | Lprint_nl ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
          | Lprint_int ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
          | Lprint_bool ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
          | Lnot ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
          | Lint _v_44 ->
              let _startpos_45 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_45, _v_44) in
              let _v = _menhir_action_61 _1 _startpos__1_ in
              _menhir_run_038_spec_105 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lexit ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
          | Lbool _v_47 ->
              let _startpos_48 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_48, _v_47) in
              let _v = _menhir_action_62 _1 _startpos__1_ in
              _menhir_run_038_spec_105 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | _ ->
              _eRR ())
      | Ladd | Land | Ldiv | Leq | Lgt | Lgte | Llt | Llte | Lmod | Lmul | Lneq | Lnot | Lor | Lsc | Lsll | Lsrl | Lsub | Lxor ->
          let (_startpos__1_, _1) = (_startpos, _v) in
          let _v = _menhir_action_11 _1 _startpos__1_ in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_093 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Lvar -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState093 _tok
  
  and _menhir_run_094 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Lvar as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lxor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsrl ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsll ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsc ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_Lvar (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_27 _1 _3 _startpos__1_ in
          _menhir_goto_instr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | Lor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lnot ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lneq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Leq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Land ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_096 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Lvar -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState096 _tok
  
  and _menhir_run_097 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Lvar as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lxor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsrl ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsll ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsc ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_Lvar (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_28 _1 _3 _startpos__1_ in
          _menhir_goto_instr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | Lor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lnot ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lneq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Leq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Land ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_099 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Lvar -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState099 _tok
  
  and _menhir_run_100 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Lvar as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lxor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsrl ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsll ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsc ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_Lvar (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_29 _1 _3 _startpos__1_ in
          _menhir_goto_instr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | Lor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lnot ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lneq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Leq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Land ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_102 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Lvar -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState102 _tok
  
  and _menhir_run_103 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Lvar as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lxor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsrl ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsll ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsc ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_Lvar (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_19 _1 _3 _startpos__1_ in
          _menhir_goto_instr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | Lor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lnot ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lneq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Leq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Land ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_105 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Lvar -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState105 _tok
  
  and _menhir_run_106 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Lvar as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lxor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsrl ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsll ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsc ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_Lvar (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_26 _1 _3 _startpos__1_ in
          _menhir_goto_instr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | Lor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lnot ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lneq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Leq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Land ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_108 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lvar _v_0 ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Lsc ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__2_, _2, _1) = (_startpos_1, _v_0, _v) in
              let _v = _menhir_action_20 _1 _2 _startpos__2_ in
              _menhir_goto_instr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | Lcomma ->
              let _menhir_stack = MenhirCell1_Ltype (_menhir_stack, _menhir_s, _v, _startpos) in
              let _menhir_stack = MenhirCell1_Lvar (_menhir_stack, MenhirState108, _v_0, _startpos_1) in
              _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer
          | Lassign ->
              let _menhir_stack = MenhirCell1_Ltype (_menhir_stack, _menhir_s, _v, _startpos) in
              let _menhir_stack = MenhirCell1_Lvar (_menhir_stack, MenhirState108, _v_0, _startpos_1) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | Lvar _v_2 ->
                  _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState114
              | Lstring _v_3 ->
                  let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_startpos__1_, _1) = (_startpos_4, _v_3) in
                  let _v = _menhir_action_63 _1 _startpos__1_ in
                  _menhir_run_038_spec_114 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
              | Lscanf ->
                  _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
              | Lprintf ->
                  _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
              | Lprint_str ->
                  _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
              | Lprint_nl ->
                  _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
              | Lprint_int ->
                  _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
              | Lprint_bool ->
                  _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
              | Lnot ->
                  _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
              | Lint _v_6 ->
                  let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_startpos__1_, _1) = (_startpos_7, _v_6) in
                  let _v = _menhir_action_61 _1 _startpos__1_ in
                  _menhir_run_038_spec_114 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
              | Lexit ->
                  _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
              | Lbool _v_9 ->
                  let _startpos_10 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_startpos__1_, _1) = (_startpos_10, _v_9) in
                  let _v = _menhir_action_62 _1 _startpos__1_ in
                  _menhir_run_038_spec_114 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_111 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Lvar -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lvar _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Lcomma ->
              let _menhir_stack = MenhirCell1_Lvar (_menhir_stack, MenhirState111, _v, _startpos) in
              _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer
          | Lassign | Lsc ->
              let _v =
                let _1 = _v in
                _menhir_action_64 _1
              in
              _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_113 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Lvar -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_Lvar (_menhir_stack, _menhir_s, _1, _) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_65 _1 _3 in
      _menhir_goto_var_decl _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_var_decl : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState108 ->
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState111 ->
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_117 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Ltype as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lsc ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_Ltype (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_05 _1 _2 _startpos__1_ in
          _menhir_goto_decl_instr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | Lassign ->
          let _menhir_stack = MenhirCell1_var_decl (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Lvar _v_0 ->
              _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState119
          | Lstring _v_1 ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos, _v_1) in
              let _v = _menhir_action_63 _1 _startpos__1_ in
              _menhir_run_038_spec_119 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lscanf ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
          | Lprintf ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
          | Lprint_str ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
          | Lprint_nl ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
          | Lprint_int ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
          | Lprint_bool ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
          | Lnot ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
          | Lint _v_3 ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos, _v_3) in
              let _v = _menhir_action_61 _1 _startpos__1_ in
              _menhir_run_038_spec_119 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lexit ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
          | Lbool _v_5 ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos, _v_5) in
              let _v = _menhir_action_62 _1 _startpos__1_ in
              _menhir_run_038_spec_119 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _menhir_fail ()
  
  and _menhir_goto_decl_instr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _1 = _v in
      let _v = _menhir_action_23 _1 in
      _menhir_goto_instr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_038_spec_119 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Ltype, _menhir_box_start) _menhir_cell1_var_decl -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState119 _tok
  
  and _menhir_run_120 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Ltype, _menhir_box_start) _menhir_cell1_var_decl as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lxor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsrl ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsll ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsc ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_var_decl (_menhir_stack, _, _2) = _menhir_stack in
          let MenhirCell1_Ltype (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
          let _4 = _v in
          let _v = _menhir_action_06 _1 _2 _4 _startpos__1_ in
          _menhir_goto_decl_instr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | Lor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lnot ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lneq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Leq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Land ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_114 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Ltype, _menhir_box_start) _menhir_cell1_Lvar -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState114 _tok
  
  and _menhir_run_115 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Ltype, _menhir_box_start) _menhir_cell1_Lvar as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lxor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsrl ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsll ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsc ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_Lvar (_menhir_stack, _, _2, _startpos__2_) = _menhir_stack in
          let MenhirCell1_Ltype (_menhir_stack, _menhir_s, _1, _) = _menhir_stack in
          let _4 = _v in
          let _v = _menhir_action_21 _1 _2 _4 _startpos__2_ in
          _menhir_goto_instr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | Lor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lnot ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lneq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Leq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Land ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_137 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_instr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState137 _tok
  
  and _menhir_run_122 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_Lreturn (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lvar _v ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState122
      | Lstring _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_0, _v) in
          let _v = _menhir_action_63 _1 _startpos__1_ in
          _menhir_run_038_spec_122 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lscanf ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | Lprintf ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | Lprint_str ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | Lprint_nl ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | Lprint_int ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | Lprint_bool ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | Lnot ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | Lint _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_1, _v) in
          let _v = _menhir_action_61 _1 _startpos__1_ in
          _menhir_run_038_spec_122 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | Lexit ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | Lbool _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _1) = (_startpos_2, _v) in
          let _v = _menhir_action_62 _1 _startpos__1_ in
          _menhir_run_038_spec_122 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_122 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Lreturn -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState122 _tok
  
  and _menhir_run_123 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Lreturn as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Lxor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsub ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsrl ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsll ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsc ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_Lreturn (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_18 _2 _startpos__1_ in
          _menhir_goto_instr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | Lor ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lnot ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lneq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Leq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Land ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_125 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_Lif (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Lopar ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Lvar _v ->
              _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState126
          | Lstring _v ->
              let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_0, _v) in
              let _v = _menhir_action_63 _1 _startpos__1_ in
              _menhir_run_038_spec_126 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lscanf ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
          | Lprintf ->
              _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
          | Lprint_str ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
          | Lprint_nl ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
          | Lprint_int ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
          | Lprint_bool ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
          | Lnot ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
          | Lint _v ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_1, _v) in
              let _v = _menhir_action_61 _1 _startpos__1_ in
              _menhir_run_038_spec_126 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | Lexit ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
          | Lbool _v ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _1) = (_startpos_2, _v) in
              let _v = _menhir_action_62 _1 _startpos__1_ in
              _menhir_run_038_spec_126 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_126 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Lif -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState126 _tok
  
  and _menhir_run_127 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Lif as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
      match (_tok : MenhirBasics.token) with
      | Lxor ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsub ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsrl ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsll ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lor ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lnot ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lneq ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llte ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llt ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgt ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Leq ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lcpar ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Locbra ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | Lwhile ->
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState129
              | Lvar _v_0 ->
                  _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState129
              | Ltype _v_1 ->
                  _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState129
              | Lstring _v_2 ->
                  let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_startpos__1_, _1) = (_startpos_3, _v_2) in
                  let _v = _menhir_action_63 _1 _startpos__1_ in
                  _menhir_run_038_spec_129 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
              | Lscanf ->
                  _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState129
              | Lreturn ->
                  _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState129
              | Lprintf ->
                  _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState129
              | Lprint_str ->
                  _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState129
              | Lprint_nl ->
                  _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState129
              | Lprint_int ->
                  _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState129
              | Lprint_bool ->
                  _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState129
              | Lnot ->
                  _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState129
              | Lint _v_5 ->
                  let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_startpos__1_, _1) = (_startpos_6, _v_5) in
                  let _v = _menhir_action_61 _1 _startpos__1_ in
                  _menhir_run_038_spec_129 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
              | Lif ->
                  _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState129
              | Lexit ->
                  _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState129
              | Lend ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_32 () in
                  _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState129 _tok
              | Lbool _v_9 ->
                  let _startpos_10 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_startpos__1_, _1) = (_startpos_10, _v_9) in
                  let _v = _menhir_action_62 _1 _startpos__1_ in
                  _menhir_run_038_spec_129 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | Land ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_129 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Lif, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState129 _tok
  
  and _menhir_run_131 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Lif, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_instrs (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Lccbra ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Lelse ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | Locbra ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | Lwhile ->
                      _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState134
                  | Lvar _v_0 ->
                      _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState134
                  | Ltype _v_1 ->
                      _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState134
                  | Lstring _v_2 ->
                      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_startpos__1_, _1) = (_startpos, _v_2) in
                      let _v = _menhir_action_63 _1 _startpos__1_ in
                      _menhir_run_038_spec_134 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
                  | Lscanf ->
                      _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState134
                  | Lreturn ->
                      _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState134
                  | Lprintf ->
                      _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState134
                  | Lprint_str ->
                      _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState134
                  | Lprint_nl ->
                      _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState134
                  | Lprint_int ->
                      _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState134
                  | Lprint_bool ->
                      _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState134
                  | Lnot ->
                      _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState134
                  | Lint _v_4 ->
                      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_startpos__1_, _1) = (_startpos, _v_4) in
                      let _v = _menhir_action_61 _1 _startpos__1_ in
                      _menhir_run_038_spec_134 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
                  | Lif ->
                      _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState134
                  | Lexit ->
                      _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState134
                  | Lend ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let _v = _menhir_action_32 () in
                      _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                  | Lbool _v_7 ->
                      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_startpos__1_, _1) = (_startpos, _v_7) in
                      let _v = _menhir_action_62 _1 _startpos__1_ in
                      _menhir_run_038_spec_134 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_134 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Lif, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_instrs -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState134 _tok
  
  and _menhir_run_135 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Lif, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_instrs -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | Lccbra ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_instrs (_menhir_stack, _, _6) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, _3, _) = _menhir_stack in
          let MenhirCell1_Lif (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let _10 = _v in
          let _v = _menhir_action_24 _10 _3 _6 _startpos__1_ in
          _menhir_goto_instr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_138 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_instr -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_instr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_31 _1 _2 in
      _menhir_goto_instrs _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_instrs : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState008 ->
          _menhir_run_144 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState091 ->
          _menhir_run_142 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState137 ->
          _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState134 ->
          _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState129 ->
          _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_144 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Ltype _menhir_cell0_Lvar, _menhir_box_start) _menhir_cell1_args -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | Lccbra ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_args (_menhir_stack, _, _4) = _menhir_stack in
          let MenhirCell0_Lvar (_menhir_stack, _2, _startpos__2_) = _menhir_stack in
          let MenhirCell1_Ltype (_menhir_stack, _menhir_s, _1, _) = _menhir_stack in
          let _7 = _v in
          let _v = _menhir_action_07 _1 _2 _4 _7 _startpos__2_ in
          (match (_tok : MenhirBasics.token) with
          | Ltype _v_0 ->
              let _menhir_stack = MenhirCell1_def (_menhir_stack, _menhir_s, _v) in
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState152
          | Lend ->
              let _1 = _v in
              let _v = _menhir_action_58 _1 in
              _menhir_goto_prog _menhir_stack _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_142 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Lwhile, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | Lccbra ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_expr (_menhir_stack, _, _3, _) = _menhir_stack in
          let MenhirCell1_Lwhile (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let _6 = _v in
          let _v = _menhir_action_25 _3 _6 _startpos__1_ in
          _menhir_goto_instr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_089 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Lwhile as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
      match (_tok : MenhirBasics.token) with
      | Lxor ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsub ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsrl ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lsll ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lor ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lnot ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lneq ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmul ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lmod ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llte ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Llt ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgte ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lgt ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Leq ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ldiv ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Lcpar ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Locbra ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | Lwhile ->
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
              | Lvar _v_0 ->
                  _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState091
              | Ltype _v_1 ->
                  _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState091
              | Lstring _v_2 ->
                  let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_startpos__1_, _1) = (_startpos_3, _v_2) in
                  let _v = _menhir_action_63 _1 _startpos__1_ in
                  _menhir_run_038_spec_091 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
              | Lscanf ->
                  _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
              | Lreturn ->
                  _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
              | Lprintf ->
                  _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
              | Lprint_str ->
                  _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
              | Lprint_nl ->
                  _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
              | Lprint_int ->
                  _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
              | Lprint_bool ->
                  _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
              | Lnot ->
                  _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
              | Lint _v_5 ->
                  let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_startpos__1_, _1) = (_startpos_6, _v_5) in
                  let _v = _menhir_action_61 _1 _startpos__1_ in
                  _menhir_run_038_spec_091 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
              | Lif ->
                  _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
              | Lexit ->
                  _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
              | Lend ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_32 () in
                  _menhir_run_142 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | Lbool _v_9 ->
                  let _startpos_10 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_startpos__1_, _1) = (_startpos_10, _v_9) in
                  let _v = _menhir_action_62 _1 _startpos__1_ in
                  _menhir_run_038_spec_091 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | Land ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Ladd ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_038_spec_091 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Lwhile, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState091 _tok
  
  and _menhir_run_038_spec_087 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState087 _tok
  
  and _menhir_run_088 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1, _) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_17 _1 _3 in
      _menhir_goto_expr_list _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_expr_list : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState087 ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState012 ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_084 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Lvar -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_Lvar (_menhir_stack, _menhir_s, _1, _startpos__1_) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_12 _1 _3 _startpos__1_ in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_038_spec_010 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Lwhile -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState010 _tok
  
  and _menhir_run_038_spec_008 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Ltype _menhir_cell0_Lvar, _menhir_box_start) _menhir_cell1_args -> _ -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos__1_, _1) = (_startpos, _v) in
      let _v = _menhir_action_08 _1 _startpos__1_ in
      _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState008 _tok
  
  let rec _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Ltype _v ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000
      | _ ->
          _eRR ()
  
end

let start =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_start v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
