let rec h n pp p = if n = 1 then p else h (n-1) p (pp+p);;
let fib_fast n = h n 0 1;;

assert (fib_fast 1 = 1);;
assert (fib_fast 2 = 1);;
assert (fib_fast 3 = 2);;
assert (fib_fast 4 = 3);;
assert (fib_fast 5 = 5);;
assert (fib_fast 6 = 8);;
assert (fib_fast 7 = 13);;

(* first value of n where fib_fast is negative is when n = 122 *)