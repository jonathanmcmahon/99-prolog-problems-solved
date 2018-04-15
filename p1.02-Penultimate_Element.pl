% 1.02 (*) Find the last but one element of a list
% Solution by Jonathan McMahon (github.com/jonathanmcmahon)
% Problem source: 
% https://sites.google.com/site/prologsite/prolog-problems/
% 
% Example usage:
% ?- penultimate_element(X,[a,b,c,d]).
% X = c

penultimate_element(Pen, [Pen, _]).

penultimate_element(Last, [_|T]) :-
    penultimate_element(Last, T).
