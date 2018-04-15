% 1.12 (**) Decode a run-length encoded list.
% Solution by Jonathan McMahon (github.com/jonathanmcmahon)
% Problem source: 
% https://sites.google.com/site/prologsite/prolog-problems/
% 
% Example usage:
% ?- decode_rle([[4, a], b, [2, c], [2, a], d, [4, e]], D).
% D = [a, a, a, a, b, c, c, a, a, d, e, e, e, e]

build_list([N|E], List) :-
    length(List, N),
    [U|_] = E,
    maplist(=(U), List).

decode_rle([], P, P).

decode_rle([H|T], P, D) :- 
    (   is_list(H) ->  
    	build_list(H, List),
    	append(P, List, Sn),
    	decode_rle(T, Sn, D)
    ;   append(P, [H], Pn),
    	decode_rle(T, Pn, D)
    ).

decode_rle(L, D) :- 
    decode_rle(L, [], D).

