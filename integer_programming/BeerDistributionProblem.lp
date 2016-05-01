\* Beer Distribution Problem *\
Minimize
Sum_of_Transportation_Costs: 2 Route_a_1 + 4 Route_a_2 + 5 Route_a_3
 + 2 Route_a_4 + Route_a_5 + 3 Route_b_1 + Route_b_2 + 3 Route_b_3
 + 2 Route_b_4 + 3 Route_b_5
Subject To
Sum_of_Products_into_Bar1: Route_a_1 + Route_b_1 >= 500
Sum_of_Products_into_Bar2: Route_a_2 + Route_b_2 >= 900
Sum_of_Products_into_Bar3: Route_a_3 + Route_b_3 >= 1800
Sum_of_Products_into_Bar4: Route_a_4 + Route_b_4 >= 200
Sum_of_Products_into_Bar5: Route_a_5 + Route_b_5 >= 700
Sum_of_Products_out_of_Warehouse_a: Route_a_1 + Route_a_2 + Route_a_3
 + Route_a_4 + Route_a_5 <= 1000
Sum_of_Products_out_of_Warehouse_b: Route_b_1 + Route_b_2 + Route_b_3
 + Route_b_4 + Route_b_5 <= 4000
Bounds
0 <= Route_a_1
0 <= Route_a_2
0 <= Route_a_3
0 <= Route_a_4
0 <= Route_a_5
0 <= Route_b_1
0 <= Route_b_2
0 <= Route_b_3
0 <= Route_b_4
0 <= Route_b_5
Generals
Route_a_1
Route_a_2
Route_a_3
Route_a_4
Route_a_5
Route_b_1
Route_b_2
Route_b_3
Route_b_4
Route_b_5
End
