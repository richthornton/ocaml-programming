(* pow function from exercise 2.02 *)
let rec pow num power = if power = 1.0 then num else num *. pow num (power -. 1.0);;
let cube x = pow x 3.0;;

(* weirdly when testing this 'sign -10;;' wouldn't work. Had to add brackets around the negative number 'sign (-10);;' *)
(* I presume it's because OCaml thinks I'm trying to do 'sign - 10' in the first case *)
let sign x = if x = 0 then 0 else if x > 0 then 1 else -1;;

let square x = pow x 2.0;;
let circle_area r = Float.pi *. (square r);;

assert (
  let area = circle_area 10. in
  area > 314.15 && area < 314.17);;