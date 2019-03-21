theory "test9"
imports Main
begin
ML \<open>

datatype Lambda_expr = Var of string | Lambda of string * Lambda_expr | Apply of Lambda_expr * Lambda_expr;


val rec is_free = fn x : string => fn 
Var y => if x = y then true else false 
| Lambda (y, l) => if x = y then false else (is_free x l)
| Apply (l,f) => (is_free x l) orelse (is_free x f);



is_free "a" (Var "a");


is_free "b" (Var "a");

is_free "a" (Lambda ("a", Apply((Var "a"), Var "b")));

is_free "b" (Lambda ("a", Apply((Var "a"), Var "b")));









\<close>
end