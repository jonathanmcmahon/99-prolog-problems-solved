% 1.25 (*) Generate a random permutation of the elements of a list.
% Solution by Jonathan McMahon (github.com/jonathanmcmahon)
% Problem source: 
% https://sites.google.com/site/prologsite/prolog-problems/
% 
% Example usage:
% ?- rnd_permu([a,b,c,d,e,f],L).
% L = [b,a,d,c,e,f]

:- ensure_loaded("p1.23-N_Random_Elements").

rnd_permu(L, P) :-
    length(L, Len),
    rnd_select(L, Len, P).

