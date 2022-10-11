open OUnit2

let tests = "test suite for product" >::: [
  "empty" >:: (fun _ -> assert_equal 0 (product []));
  "singleton" >:: (fun _ -> asset_equal 1 (product [1]));
  "two_elements" >:: (fun _ assert_equal 3 (product [1; 2]));
]

let _ = run_test_tt_main tests