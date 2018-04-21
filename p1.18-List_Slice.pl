% 1.18 (**) Extract a slice from a list.
% Solution by Jonathan McMahon (github.com/jonathanmcmahon)
% Problem source: 
% https://sites.google.com/site/prologsite/prolog-problems/
% 
% Example usage:
% ?- slice([a,b,c,d,e,f,g,h,i,k],3,7,L).
% L = [c, d, e, f, g]

slice([X|_], 1, 1, [X]).

slice([H|T], 1, Ie, [H|Te]) :-
    Ie > 1,
    Ien is Ie - 1,
    slice(T, 1, Ien, Te).

slice([_|T], Is, Ie, X) :-
    Is > 1,
    Isn is Is - 1,
    Ien is Ie - 1,
    slice(T, Isn, Ien, X).

