open OUnit2
(* open Product *)
open Library

(* let tests = "test suite for product" >::: [
  "empty" >:: (fun _ -> assert_equal 1 (product []));
  "singleton" >:: (fun _ -> assert_equal 1 (product [1]));
  "two_elements" >:: (fun _ -> assert_equal 2 (product [1; 2]));
] *)

(* let test_fifth_element exp lst = (fun _ -> assert_equal exp (fifth_element lst))

let library_tests = "test suite for library fifth element" >::: [
  "empty list returns 0" >:: test_fifth_element 0 [];
  "four elements" >:: test_fifth_element 0 [1; 2; 3; 4;];
  "five elements" >:: test_fifth_element 5 [1; 2; 3; 4; 5;];
  "six elements" >:: test_fifth_element 5 [1; 2; 3; 4; 5; 6;];
] *)

let sort_desc_element exp lst = (fun _ -> assert_equal exp (sort_desc ~lst))

let library_tests = "test suite for library desacending sort" >::: [
  "empty list returns empty list" >:: sort_desc_element [] [];
  "unordered list" >:: sort_desc_element [4;3; 2; 1;] [2; 4; 3; 1;];
  "already ordered" >:: sort_desc_element [5; 4; 3; 2; 1;] [1; 2; 3; 4; 5;];
]

let _ = run_test_tt_main library_tests