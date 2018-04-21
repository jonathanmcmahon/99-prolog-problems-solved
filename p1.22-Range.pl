% 1.22 (*) Create a list containing all integers within a given range.
% Solution by Jonathan McMahon (github.com/jonathanmcmahon)
% Problem source: 
% https://sites.google.com/site/prologsite/prolog-problems/
% 
% Example usage:
% ?- range(4,9,L).
% L = [4, 5, 6, 7, 8, 9]

range(_, C, C, [C]).

range(S, E, C, [C|L]) :-
    C >= S,
    Cn is C + 1,
    range(S, E, Cn, L).

range(S, E, C, L) :-
    C < S,
    Cn is C + 1,
    range(S, E, Cn, L).

range(S, E, L) :-
    range(S, E, 1, L).

