% 1.17 (*) Split a list into two parts; the length of the first part is given.
% Solution by Jonathan McMahon (github.com/jonathanmcmahon)
% Problem source: 
% https://sites.google.com/site/prologsite/prolog-problems/
% 
% Example usage:
% ?- split([a,b,c,d,e,f,g,h,i,k],3,L1,L2).
% L1 = [a, b, c],
% L2 = [d, e, f, g, h, i, k]

split(L, 0, [], L).

split([H|T], N, [H|L1], L2) :-
    N > 0,
    Nn is N - 1,
    split(T, Nn, L1, L2).

