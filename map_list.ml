
(* open Seq *)

(* function seq_of_list (l: 'a list): 'a seq = match l with
      | [] -> empty
      | x :: r -> cons x (seq_of_list r) *)
(* coercion *)

(* lemma seq_of_list_append: forall l1 l2: 'a list.
      seq_of_list (List.append l1 l2) == seq_of_list l1 ++ seq_of_list l2 *)


(* function nth (l: 'a list): 'a seq = match l with
      | [] -> empty
      | x :: r -> cons x (seq_of_list r) *)

(*@ predicate permitted (v: 'a list) (s: 'a list) =
      List.length v <= List.length s &&
      forall i. 0 <= i < List.length v -> Nth.nth i v = Nth.nth i s *)

(*@ predicate complete (l: 'a list) (v: 'a list) =
      List.length v = List.length l *)

let rec map (pf : 'a list [@ghost]) (all : 'a list [@ghost]) (f:'a -> 'b) (xs:'a list) =
  match xs with
  | [] -> []
  | x :: xs1 -> f x :: map (pf @ [x]) all f xs1
(*@ ys = map pf all f xs
      requires all = pf ++ xs
      variant xs
      ensures List.length ys = List.length xs
      ensures forall i. 0 <= i < List.length ys -> Nth.nth i ys = f (Nth.nth i xs)
*)

let id y = y
(*@ res = id x
    ensures x = res
*)

(*@ lemma index_shift: forall x:'a, xs:'a list, i:int.
    1 <= i /\ i < List.length (Cons x xs) -> Nth.nth i (Cons x xs) = Nth.nth (i-1) xs
*)

(*@ lemma length_smaller: forall xs ys: 'a list, x: 'a.
    List.length xs = List.length ys ->
    (forall i: int. 0 <= i /\ i <= List.length xs -> Nth.nth i (Cons x xs) = Nth.nth i (Cons x ys)) ->
    (forall i: int. 0 <= i /\ i < List.length xs -> Nth.nth i xs = Nth.nth i ys)
*)

(*@ lemma nth_agree : forall xs ys: 'a list.
      List.length xs = List.length ys ->
      (forall i: int. 0 <= i /\ i < List.length xs -> Nth.nth i xs = Nth.nth i ys)
      -> xs = ys *)

let map_id ys = map [] ys id ys
(*@ r = map_id ys
    ensures r = ys
*)

