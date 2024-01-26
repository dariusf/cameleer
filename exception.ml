
let failing (x:int ref) : int
= x := !x + 1;
  if !x = 3 then raise Not_found else !x
(*@ r = failing x
    requires !x > 0
    raises Not_found -> !x > old !x
    ensures !x > old !x *)

let test1 () : bool =
  let i = ref 2 in
  let init = !i in
  let z =
    try
      failing i
    with Not_found ->
      0
  in
  not (!i = init)
(*@ r = test1 ()
      ensures r = true *)
