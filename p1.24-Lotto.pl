% 1.24 (*) Lotto: Draw N different random numbers from the set 1..M. 
% Solution by Jonathan McMahon (github.com/jonathanmcmahon)
% Problem source: 
% https://sites.google.com/site/prologsite/prolog-problems/
% 
% Example usage:
% ?- lotto(6,49,L).
% L = [23,1,17,33,21,37]

:- ensure_loaded("p1.22-Range").
:- ensure_loaded("p1.23-N_Random_Elements").

lotto(N, U, L) :-
    range(1, U, R),
    rnd_select(R, N, L).
