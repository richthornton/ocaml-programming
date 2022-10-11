let product lst =
  let rec go lst acc =
    match lst with
    | [] -> acc
    | h :: t -> acc * h |> go t
  in
  go lst 1
