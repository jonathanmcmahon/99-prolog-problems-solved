% 1.16 (**) Drop every N'th element from a list.
% Solution by Jonathan McMahon (github.com/jonathanmcmahon)
% Problem source: 
% https://sites.google.com/site/prologsite/prolog-problems/
% 
% Example usage:
% ?- drop([a,b,c,d,e,f,g,h,i,k],3,X).
% X = [a, b, d, e, g, h, k]

drop([], _, _, []).

drop([_|T], N, 1, S) :-
    drop(T, N, N, S).

drop([H|T], N, C, [H|S]) :-
    C > 1,
    Cn is C - 1,
    drop(T, N, Cn, S).

drop(L, N, S) :-
    drop(L, N, N, S).

