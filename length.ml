
let[@logic] rec length (xs:'a list) : int =
  match xs with
  | [] -> 0
  | _ :: xs1 -> 1 + length xs1

(*@ lemma length_positive_l: forall xs:'a list. length xs >=0 *)

(*@ lemma length_emp: forall xs:'a list. xs=[] -> length xs = 0 *)
