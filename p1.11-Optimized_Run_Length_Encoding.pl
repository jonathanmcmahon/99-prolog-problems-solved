% 1.11 (*) Modified run-length encoding.
% Solution by Jonathan McMahon (github.com/jonathanmcmahon)
% Problem source: 
% https://sites.google.com/site/prologsite/prolog-problems/
% 
% Example usage:
% ?- modified_rle([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
% X = [[4, a], b, [2, c], [2, a], d, [4, e]]

modified_rle(E, [], S, L, C) :-
    length([E|S], Slen),
    (   Slen == 1 ->
    	append(L, [E], C)
    ;   append(L, [[Slen, E]], C)
    ).

modified_rle(E, [H|T], S, L, C) :- 
    (   E == H ->  
    	modified_rle(H, T, [E|S], L, C)
    ;   length([E|S], Slen),
		(   Slen == 1 ->
    		append(L, [E], Ln)
    	;   append(L, [[Slen, E]], Ln)
    	),
        modified_rle(H, T, [], Ln, C)
    ).

modified_rle([H|T],C) :- 
    modified_rle(H,T, [], [], C).

