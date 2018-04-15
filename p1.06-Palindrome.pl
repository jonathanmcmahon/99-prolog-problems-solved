% 1.06 (*) Find out whether a list is a palindrome.
% Solution by Jonathan McMahon (github.com/jonathanmcmahon)
% Problem source: 
% https://sites.google.com/site/prologsite/prolog-problems/
%
% Example usage:
% ?- palindrome([a, m, x, m, a]).
% true

palindrome(L) :- reverse(L,L).

