% 1.14 (*) Duplicate the elements of a list.
% Solution by Jonathan McMahon (github.com/jonathanmcmahon)
% Problem source: 
% https://sites.google.com/site/prologsite/prolog-problems/
% 
% Example usage:
% ?- dupl([a,b,c,c,d],X).
% X = [a, a, b, b, c, c, c, c, d, d]

dupl(E, [], S, Sn) :-
     append(S, [E,E], Sn).

dupl(E, [H|T], S, X) :-
    append(S, [E, E], Sn),
    dupl(H, T, Sn, X).

dupl([H|T],X) :- 
	dupl(H, T, [], X).

