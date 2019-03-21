theory "test6"
imports Main
begin
ML \<open>


val rec hist : real list -> real * real -> int = fn 
[] => (fn (c, d) => 0)
| a::b => (fn (c, d) => if  (a > (c - d) andalso a < (c + d)) then 1 + (hist b (c, d)) else 0 + (hist b (c, d)));    



hist [1.1, 10.5, 10.6, 7.0, 4.2] (10.2, 5.4);












\<close>
end