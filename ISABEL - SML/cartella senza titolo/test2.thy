theory "test2"
imports Main
begin
ML \<open>

val positivo = fn x => x> 0;

val rec test = fn
  [] => (fn f => 0)
| a::b => (fn f => if(f(a)) then 1 + (test b f) else (0 + (test b f)));















\<close>
end


(* scrivere un afunzione test che riceve come argomenti una lista di elementi di tipo 'a ed una funziona con tipo 'a \<rightarrow> bool.
   test conta il numero di elementi dell a lista che sono true *)