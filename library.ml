let fifth_element =
  function
  | _ ::  _ :: _ :: _ :: fifth :: _ -> fifth
  | _ -> 0

let fifth lst =
  let n = 4 in
  if lst |> List.length > n then List.nth lst n else 0

let fifth' lst = List.nth_opt lst 4 |> Option.fold ~none:0 ~some:(Fun.id)


let getOrElse onNone = function | Some x -> x | None -> onNone

let fifth'' lst = 
  List.nth_opt lst 4 
  |> Option.fold ~none:0 ~some:Fun.id

(* let fifth'' lst = List.nth_opt lst 5 |> Option.fold 0 (fun x -> x) *)

let fifth''' lst = List.nth_opt lst 5 |> getOrElse 0

let sort_desc ~lst = lst |> List.sort Stdlib.compare |> List.rev;;
