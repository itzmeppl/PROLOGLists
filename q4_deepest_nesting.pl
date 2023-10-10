% Enter the names of your group members below.
% If you only have 2 group members, leave the last space blank
%
%%%%%
%%%%% NAME: Riddhima Garg
%%%%% NAME: Piraveen Dayananthan
%%%%% NAME:
%
% Add the required rules in the corresponding sections. 
% If you put the rules in the wrong sections, you will lose marks.
%
% You may add additional comments as you choose but DO NOT MODIFY the comment lines below
%

%%%%% SECTION: deepestNesting
%%%%% Predicate definition: deepestNesting(List, Depth)

deepestNesting([], Depth) :- Depth = 0.
deepestNesting(A, Depth) :- not is_list(A), Depth = 0.
deepestNesting(List, Depth) :- nesting(List, X, 1,1), Depth = X.

nesting([], MaxDepth, PrevDepth, CurrDepth) :- max(PrevDepth, CurrDepth, New), MaxDepth = New.
nesting([H|T], MaxDepth, PrevDepth, CurrDepth) :- not is_list(H), nesting(T, MaxDepth, PrevDepth, CurrDepth).
nesting([H|T], MaxDepth, PrevDepth, CurrDepth) :- is_list(H), H \= [], nesting(H, X, 1, 1), New is CurrDepth + X, max(New, PrevDepth, Res), nesting(T, MaxDepth, Res, CurrDepth).
nesting([H|T], MaxDepth, PrevDepth, CurrDepth) :- is_list(H), H == [], nesting(H, X, 1, 1), New is CurrDepth + X - 1, max(New, PrevDepth, Res), nesting(T, MaxDepth, Res, CurrDepth).
dN([H|T], 1).

dN([H|T], MaxDepth, Acc) :- not is_list(H), dN(T,Acc).
dN([H|T], D, Acc) :- is_list(H), Depth is Acc+1, max(Depth, D, Y), dN(H, Y).
