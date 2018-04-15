% 1.05 (*) Reverse the elements of a list.
% Solution by Jonathan McMahon (github.com/jonathanmcmahon)
% Problem source: 
% https://sites.google.com/site/prologsite/prolog-problems/
%
% Example usage:
% ?- reverse_list(L, [1,2,3,4,5,6,7]).
% L = [7, 6, 5, 4, 3, 2, 1]

reverse_list(Z,[], Z).

reverse_list(L, [H|T], R) :-
    reverse_list(L, T, [H|R]).

reverse_list(L, [Head|Tail]) :-
    reverse_list(L, Tail, [Head]).

