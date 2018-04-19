% 1.15 (**) Duplicate the elements of a list a given number of times. 
% Solution by Jonathan McMahon (github.com/jonathanmcmahon)
% Problem source: 
% https://sites.google.com/site/prologsite/prolog-problems/
% 
% Example usage:
% ?- ndup([a,b,c], 3, X).
% X = [a, a, b, b, c, c, c, c, d, d]

ndup(L, N, X) :-
    ndup(L, N, X, N).

ndup([H|T], N, [H|U], C) :-
    Cn is C - 1,
    C > 0,
    ndup([H|T], N, U, Cn).

ndup([_|T], N, X, 0) :-
	ndup(T, N, X, N).

ndup([], _, [], _).

