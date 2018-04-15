% 1.03 (*) Find the K'th element of a list. 
% Solution by Jonathan McMahon (github.com/jonathanmcmahon)
% Problem source: 
% https://sites.google.com/site/prologsite/prolog-problems/
% 
% Example usage:
% ?- kth_element(L, [1,2,3,4,5,6], 3).
% L = 3

kth_element(Kth, [Kth|_], 1).

kth_element(Kth, [_|Rest], Counter) :-
    succ(X, Counter),
	kth_element(Kth, Rest, X).
