% 1.13 (**) Run-length encoding of a list (direct solution).
% Solution by Jonathan McMahon (github.com/jonathanmcmahon)
% Problem source: 
% https://sites.google.com/site/prologsite/prolog-problems/
% 
% Example usage:
% ?- direct_rle([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
% X = [[4, a], b, [2, c], [2, a], d, [4, e]]

direct_rle(E, [], N, L, C) :-
    (   N == 1 ->
        append(L, [E], C)
    ;   append(L, [[N, E]], C)
    ).

direct_rle(E, [H|T], N, L, C) :- 
    (   E == H ->
    	succ(N, Np),
        direct_rle(H, T, Np, L, C)
    ;   (   N == 1 ->
        append(L, [E], Ln)
        ;   append(L, [[N, E]], Ln)
        ),
        direct_rle(H, T, 1, Ln, C)
    ).

direct_rle([H|T],C) :- 
    direct_rle(H,T, 1, [], C).

