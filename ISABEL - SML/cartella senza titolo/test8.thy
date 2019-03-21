theory "test8"
imports Main
begin
ML \<open>

type insiemediinteri = int -> bool

val intersezione = fn i1 : insiemediinteri => fn i2 : insiemediinteri => (fn n => (contiene i1 n) andalso (contiene i2 n));











\<close>
end