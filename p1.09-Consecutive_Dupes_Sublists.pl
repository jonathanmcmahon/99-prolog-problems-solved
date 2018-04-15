% 1.09 (**) Pack consecutive duplicates of list elements into sublists.
% Solution by Jonathan McMahon (github.com/jonathanmcmahon)
% Problem source: 
% https://sites.google.com/site/prologsite/prolog-problems/
% 
% Example usage:
% ?- pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
% X = [[a, a, a, a], [b], [c, c], [a, a], [d], [e, e, e, e]]

pack(E, [], S, L, C) :-
	append(L, [[E|S]], C).

pack(E, [H|T], S, L, C) :- 
    (   E == H ->  
    	pack(H, T, [E|S], L, C)
    ;   append(L, [[E|S]], Ln),
        pack(H, T, [], Ln, C)
    ).

pack([H|T],C) :- 
    pack(H,T, [], [], C).

