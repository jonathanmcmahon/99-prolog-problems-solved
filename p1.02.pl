/* 

Original problem: https://sites.google.com/site/prologsite/prolog-problems/1

Problem 1.02 (*) Find the last but one element of a list

.*/

% penultimate_element(Pen, [Pen]).

penultimate_element(Pen, [Pen, _]).

penultimate_element(Last, [_|T]) :-
    penultimate_element(Last, T).
    
