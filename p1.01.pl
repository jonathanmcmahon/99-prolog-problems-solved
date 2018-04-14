/* 

Original problem: https://sites.google.com/site/prologsite/prolog-problems/1

Problem 1.01 (*) Find the last element of a list.
    Example:
    ?- my_last(X,[a,b,c,d]).
    X = d

*/

last_element(Last, [Last]).

last_element(Last, [_|T]) :-
    last_element(Last, T).
    
