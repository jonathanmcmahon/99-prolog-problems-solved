% 1.06 (*) Find out whether a list is a palindrome.
% Problem source: 
% https://sites.google.com/site/prologsite/prolog-problems/
% 
% Example usage:
% ?- palindrome([a, m, x, m, a]).
% true

palindrome(L) :- reverse(L,L).

