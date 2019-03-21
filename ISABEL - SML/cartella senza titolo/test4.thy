theory "test4"
imports Main
begin
ML \<open>

datatype naturale = zero | successivo of naturale;

val rec somma= fn  zero => (fn n => n)
                | successivo a => (fn n => successivo (somma a n)); 


val rec prodotto = fn zero => (fn n => zero)
                    | successivo zero => (fn n => n)
                    | successivo a => (fn n => somma n (prodotto a n));  


\<close>
end