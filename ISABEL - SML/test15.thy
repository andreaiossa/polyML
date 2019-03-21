theory "test15"
imports Main
begin
ML \<open>


type insiemediinteri = int -> bool;

val vuoto:insiemediinteri = fn n => false;

val aggiungi = fn f:insiemediinteri => fn x:int =>
		(fn n:int => if (n = x) then
						true
					else
						false
		):insiemediinteri;

val contiene = fn f:insiemediinteri => fn n:int => f n;



val intersezione = fn x : insiemediinteri => fn y : insiemediinteri => (fn n => (contiene x n) andalso (contiene y n)) : insiemediinteri;










\<close>
end