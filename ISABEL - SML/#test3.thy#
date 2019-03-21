theory "test3"
imports Main
begin
ML \<open>

datatype naturale = zero | successivo of naturale;

val rec intTOnat = fn
0 => (zero)
| x => successivo (intTOnat (x -1)); 

val rec natToint = fn
zero => 0
|successivo x => 1 + natToint x;

val rec somma = fn 
zero => (fn n => n)
|successivo x => (fn n => successivo(somma x n));

val rec prodotto = fn
zero => (fn b => zero)
| successivo a => (fn b => somma b (prodotto a b)); 

prodotto (successivo zero) (successivo zero);








\<close>
end