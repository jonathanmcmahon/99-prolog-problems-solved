% 1.04 (*) Find the number of elements of a list.
% Solution by Jonathan McMahon (github.com/jonathanmcmahon)
% Problem source: 
% https://sites.google.com/site/prologsite/prolog-problems/
% 
% Example usage: 
% ?- list_len(L, [1,2,3,4]).
% L = 4

list_len(Counter, [], Counter).

list_len(L, [_|Tail], Counter) :-
    succ(Counter, X),
    list_len(L, Tail, X).

list_len(L, [_|Tail]) :-
    list_len(L, Tail, 1).

