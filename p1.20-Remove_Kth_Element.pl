% 1.20 (*) Remove the K'th element from a list.
% Solution by Jonathan McMahon (github.com/jonathanmcmahon)
% Problem source: 
% https://sites.google.com/site/prologsite/prolog-problems/
% 
% Example usage:
% ?- remove_at(X,[a,b,c,d],2,R).
% R = [a,c,d]
% X = b

remove_at(_, [], _, []).

remove_at(H, [H|T], 1, R) :-
    remove_at(H, T, 0, R).

remove_at(X, [H|T], I, [H|R]) :-
    I \= 1,
    In is I - 1,
    remove_at(X, T, In, R).

