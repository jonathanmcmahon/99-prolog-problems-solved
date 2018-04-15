% 1.07 (**) Flatten a nested list structure. 
% Problem source: 
% https://sites.google.com/site/prologsite/prolog-problems/
% 
% Example usage:
% ?- flatten_list([a, [b, [c, d], e]], L)
% L = [a, b, c, d, e]

flatten_list(X,[X]) :- \+ is_list(X).

flatten_list([],[]).

flatten_list([H|T],F) :- 
    flatten_list(H,Hf), 
    flatten_list(T,Tf), 
    append(Hf,Tf,F).

