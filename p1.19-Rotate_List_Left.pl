% 1.19 (**) Rotate a list N places to the left.
% Solution by Jonathan McMahon (github.com/jonathanmcmahon)
% Problem source: 
% https://sites.google.com/site/prologsite/prolog-problems/
% 
% Example usage:
% ?- rotate([a,b,c,d,e,f,g,h],3,X).
% X = [d, e, f, g, h, a, b, c]

rotate(X, 0, X).

% Note: N must be positive.
rotate([H|T], N, X) :- 
    N > 0,
    Nn is N - 1,
    append(T, [H], Ln),
    rotate(Ln, Nn, X).

