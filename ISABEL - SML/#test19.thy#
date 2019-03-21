theory "test19"
imports Main
begin
ML \<open>

datatype espressione =   costante    of int
                       | variabile   of string
                       | somma       of espressione * espressione
                       | sottrazione of espressione * espressione
                       | prodotto    of espressione * espressione
                       | divisione   of espressione * espressione
                       | var         of string      * espressione * espressione;


val rec cerca : string -> (string * int) list -> int  = fn x => fn
(a,b)::c => if (x = a) then b else (cerca x c);

val rec eval = fn l => fn
costante x => x
|variabile x => cerca x l
|somma (e1, e2) => (eval e1) + (eval e2)
|sottrazione (e1, e2) => (eval e1) - (eval e2) 
|prodotto (e1, e2) => (eval e1) * (eval e2)
|divisione (e1, e2) => (eval e1) div (eval e2)
|var (x, e1, e2) => eval (((x, (eval e1))::l) e2;
 








\<close>
end