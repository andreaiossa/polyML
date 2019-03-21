theory "test7"
imports Main
begin
ML \<open>


val rec cerca = fn n => fn 
[] => 1
| a::b => if n = a then 0 else cerca n b;




val rec noduplen = fn
[] => 0
|a::b => (cerca a b) + (noduplen b); 


cerca 1 [1, 2, 3];
 noduplen [1, 1, 2, 3]












\<close>
end
