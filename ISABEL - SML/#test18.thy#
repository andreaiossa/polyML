theory "test18"
imports Main
begin
ML \<open>


datatype codice = rosso of string | giallo of string | verde of string;



val rec arriva : codice list -> codice -> codice list = fn list =>

let

val rec codice_verde = fn x : codice => fn
[] => x::[]
|(verde(y))::b => (verde(y))::(codice_verde x b)
|(giallo(y))::b => (giallo(y))::codice_verde x b
|(rosso(y))::b => (rosso(y))::codice_verde x b;

val rec codice_giallo = fn x : codice => fn
[] => x::[]
|(verde(y))::b => x::(verde(y))::b
|(giallo(y))::b => (giallo(y))::(codice_giallo x b)
|(rosso(y))::b => (rosso(y))::(codice_giallo x b);

val rec codice_rosso = fn x : codice => fn
[] => x::[]
|(verde(y))::b => x::(verde(y))::b
|(giallo(y))::b => x::(giallo(y))::b
|(rosso(y))::b =>  (rosso(y))::(codice_rosso x b);

in

fn
rosso(x) => codice_rosso (rosso(x)) list
| giallo(x) => codice_giallo (giallo(x)) list
| verde(x) => codice_verde (verde(x)) list

end;


arriva [rosso "topolino", rosso "cip", giallo "ciop", verde "paperino", verde "pluto"] (giallo "clarabella")











\<close>
end
