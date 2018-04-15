% 1.08 (**) Eliminate consecutive duplicates of list elements.
% Problem source: 
% https://sites.google.com/site/prologsite/prolog-problems/
% 
% Example usage:
% ?- compress([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
% X = [a, b, c, a, d, e]

compress(E, [], L, C) :-
    append(L, [E], C).

compress(E, [H|T], L, C) :- 
    (   E == H ->  
    	compress(H, T, L, C)
    ;   append(L, [E], Ln),
        compress(H, T, Ln, C)
    ).

compress([H|T],C) :- 
    compress(H,T, [], C).

