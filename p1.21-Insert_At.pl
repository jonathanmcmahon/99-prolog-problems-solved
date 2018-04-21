% 1.21 (*) Insert an element at a given position into a list.
% Solution by Jonathan McMahon (github.com/jonathanmcmahon)
% Problem source: 
% https://sites.google.com/site/prologsite/prolog-problems/
% 
% Example usage:
% ?- insert_at(alfa,[a,b,c,d],2,L).
% L = [a, alfa, b, c, d]

insert_at(E, L, 1, [E|L]).

insert_at(E, [H|T], I, [H|Xt]) :-
    I > 1,
    In is I - 1,
    insert_at(E, T, In, Xt).

