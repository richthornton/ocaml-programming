let f x = if x then x else x;;
let g x y = if y then x else x;;
let h x y z = if x then y else z;;
let i x y z = if x then y else y;;

(*
val f : bool -> bool = <fun>
val g : 'a -> bool -> 'a = <fun>
val h : bool -> 'a -> 'a -> 'a = <fun>
val i : bool -> 'a -> 'b -> 'a = <fun>
*)
