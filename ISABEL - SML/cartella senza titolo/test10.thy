theory "test10"
imports Main
begin
ML \<open>

datatype espressione = costante of int
                       | variabile of string 
                       | somma of espressione * espressione
                       | prodotto of espressione * espressione
                       | divisione of espressione * espressione
                       | var of string * espressione * espressione


val rec cerca = fn (a,b)::c : (string*int) list => fn n : string => if n = a then b else cerca c n;


val rec eval = fn lis : (string * int) list=> fn
costante n => n
| variabile n => cerca lis n
| somma (a1, a2) => (eval lis a1)  + (eval lis  a2)
| prodotto (a1,a2) => (eval lis a1)  * (eval lis  a2)
| divisione (a1, a2) => (eval lis a1)  div (eval lis  a2)
| var (n, a1, a2) => eval ((n, eval lis  a1)::lis) a2;













\<close>
end