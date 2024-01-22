
(*@ function rec fibonacci (n: integer) : integer =
      if n <= 1 then n else fibonacci (n-2) + fibonacci (n-1)
  requires n >= 0
    variant n *)

(*
  function sum_int (f: int -> int) (a b: int) : int
  = if b <= a then 0 else sum_int f a (b - 1) + f (b - 1)
   *)



(*
  function sum_int (f: int -> int) (a b: int) : int
  = if b <= a then 0 else sum_int f a (b - 1) + f (b - 1)
   (*@ variant (b - a) *)
   *)




(*@ function rec sum_of_list (l: int list): int =
      match l with
      | [] -> 0
      | x :: r -> x + sum_of_list r *)

(*
  function rec sum_int (f: int -> int) (a b: int) : int
  = if b <= a then 0 else sum_int f a (b - 1) + f (b - 1)
   *)
   (*@ variant (b - a) *)


(* function sum_of_seq (s: int seq) : int = sum_int (fun i -> s[i]) 0 (length s) *)

(* lemma seq_sum : forall v: int list, s: int seq.
      seq_of_list v = s ->
      sum_of_seq s = sum_of_list v *)

(* lemma fold_left_sum: forall xs: int list, acc int.
      fold_left [] (fun e p -> e == Seq.sum p) xs (fun c t -> c + t) acc xs == sum_of_list xs *)

(*



*)
