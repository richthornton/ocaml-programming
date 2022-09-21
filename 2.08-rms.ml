let rec pow num power = if power = 1.0 then num else num *. pow num (power -. 1.0);;
let square x = pow x 2.0;;


let rms x y = 
  let squared_addition = (square x) +. (square y) in
  Float.sqrt((squared_addition /. 2.));;

assert (
  let value = rms 10. 15. in
  value > 12. && value < 13.
)