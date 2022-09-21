let between low high value = value >= low && value <= high;;
let valid_date d m =
  if m = "Sept" || m = "Apr" || m = "Jun" || m = "Nov" then (between 1 30 d)
  else if m = "Feb" then (between 1 28 d)
  else if m = "Jan" || m = "Feb" || m = "Mar" || m = "May" || m = "Jul" || m = "Aug" || m = "Oct" || m = "Dec" then (between 1 31 d)
  else false;;

assert (valid_date 1 "Feb");;
assert (valid_date 29 "Feb" = false);;
assert (valid_date 31 "Dec");;
assert (valid_date 0 "Dec" = false);;
