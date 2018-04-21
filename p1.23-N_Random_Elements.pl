% 1.23 (**) Extract a given number of randomly selected elements from a list.
% Solution by Jonathan McMahon (github.com/jonathanmcmahon)
% Problem source: 
% https://sites.google.com/site/prologsite/prolog-problems/
% 
% Example usage:
% ?- rnd_select([a,b,c,d,e,f,g,h],3,L).
% L = [g, e, a]

:- ensure_loaded("p1.20-Remove_Kth_Element").

rnd_select([], 0, _, []).

rnd_select([E], 1, S, [E|S]).

rnd_select(L, N, S, X) :-
    N > 0,
    Nn is N - 1,
    length(L, Tmp),
    Len is Tmp + 1,
    random(1, Len, R),
    remove_at(E, L, R, Ln),
    rnd_select(Ln, Nn, [E|S], X).

rnd_select(L, N, X) :-
    rnd_select(L, N, [], X).

