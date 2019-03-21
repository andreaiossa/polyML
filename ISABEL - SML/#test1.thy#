theory "test1"
imports Main
begin
ML \<open>

datatype expr = X | Y | Avg of expr * expr | Mul of expr * expr;

val rec compute = fn
X => (fn a => fn b => a)
|Y => (fn a => fn b => b)
|Avg (e1, e2) => (fn a => fn b => (((compute e1 a b) + (compute e2 a b)) div 2))
|Mul (e1, e2) => (fn a => fn b => ((compute e1 a b) * (compute e2 a b)));  

compute (Avg(X, Y)) 5 3;










\<close>
end