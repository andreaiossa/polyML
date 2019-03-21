theory "test14"
imports Main
begin
ML \<open>

val rec lista_pari= fn
[] => []
|a::nil => []
|a::b::c => b::(lista_pari c);


lista_pari [1, 5, 2, 10]









\<close>
end