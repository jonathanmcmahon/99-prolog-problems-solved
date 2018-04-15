% 1.10 (*) Run-length encoding of a list.
% Solution by Jonathan McMahon (github.com/jonathanmcmahon)
% Problem source: 
% https://sites.google.com/site/prologsite/prolog-problems/
% 
% Example usage:
% ?- run_length_encode([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
% X = [[4, a], [1, b], [2, c], [2, a], [1, d], [4, e]]

run_length_encode(E, [], S, L, C) :-
    length([E|S], Slen),
    append(L, [[Slen, E]], C).

run_length_encode(E, [H|T], S, L, C) :- 
    (   E == H ->  
    	run_length_encode(H, T, [E|S], L, C)
    ;   length([E|S], Slen),
        append(L, [[Slen, E]], Ln),
        run_length_encode(H, T, [], Ln, C)
    ).

run_length_encode([H|T],C) :- 
    run_length_encode(H,T, [], [], C).

