theory "test20"
imports Main
begin
ML \<open>

datatype intonil = Nil | Int of int;

type ambiente = string -> intonil

val ambientevuoto = fn _ : string => Nil;

val rec lega : ambiente -> string -> int -> ambiente = fn ambiente1 => fn str => fn n => 

(fn st => if st = str then Int(n) else (ambiente1 st));



((lega (lega ( lega ambientevuoto "a" 1) "bho" 2) "meh" 3) "a") 













\<close>
end