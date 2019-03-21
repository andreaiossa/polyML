theory "test13"
imports Main
begin
ML \<open>

datatype FOR = For of int * (int -> int);

val rec eval = fn  For(x, f) => fn n => if (x > 1) then
                                      
                                     eval (For(x-1, f)) (f(n))

                                     else

                                     n;



val f = fn x => x * 2;

val prova = eval (For(3, f));

prova 4;


\<close>
end