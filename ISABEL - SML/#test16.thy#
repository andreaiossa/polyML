theory "test16"
imports Main
begin
ML \<open>


datatype intonil = Nil | Int of int;

type ambiente = string -> intonil 

val ambientevuoto = fn _ : string => Nil;

val lega =fn  ambiente1 : ambiente => fn str : string => fn x : int  => (fn y: string => if y = str then Int(x) else ambiente1 y): ambiente;





((lega ambientevuoto "a" 1) "bho");
((lega (lega ambientevuoto "a" 1) "bho" 2) "a");
((lega (lega ambientevuoto "a" 1) "bho" 2) "mah");
 












\<close>
end