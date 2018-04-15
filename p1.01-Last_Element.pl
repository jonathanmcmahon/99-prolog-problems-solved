% 1.01 (*) Find the last element of a list.
% Solution by Jonathan McMahon (github.com/jonathanmcmahon)
% Problem source: 
% https://sites.google.com/site/prologsite/prolog-problems/
% 
% Example usage:
% ?- my_last(X,[a,b,c,d]).
% X = d

last_element(Last, [Last]).

last_element(Last, [_|T]) :-
    last_element(Last, T).
