(* let rec concat lst =
  match lst with
  | [] -> ""
  | h :: t -> h ^ (concat t) *)

let concat lst =
  let rec go lst acc =
    match lst with
    | [] -> acc
    | h :: t -> acc ^ h |> go t
  in
  go lst ""