let is_big_red =
  function
  | [] -> false
  | h :: _ -> h = "bigred"

let two_or_four =
  function
  | _ :: _ :: _ :: _ :: [] -> true
  | _ :: _ :: [] -> true
  | _ -> false

let first_two_equal =
  function
  | first :: second :: _ -> first = second
  | _ -> false