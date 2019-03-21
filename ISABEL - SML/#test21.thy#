theory "test21"
imports Main
begin
ML \<open>

datatype FOR = For of int * (int -> int);

val rec eval : FOR -> (int -> int) = fn For(n, f) => fn x => if n > 0 then (eval (For(n-1, f)) (f(x))) else x; 

val f = fn x => x * 2;
val g = eval (For(3, f));

g 5;















\<close>
end