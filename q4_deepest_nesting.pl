% Enter the names of your group members below.
% If you only have 2 group members, leave the last space blank
%
%%%%%
%%%%% NAME: 
%%%%% NAME:
%%%%% NAME:
%
% Add the required rules in the corresponding sections. 
% If you put the rules in the wrong sections, you will lose marks.
%
% You may add additional comments as you choose but DO NOT MODIFY the comment lines below
%

%%%%% SECTION: deepestNesting
%%%%% Predicate definition: deepestNesting(List, Depth)

 %func([H|T], Head) :- helper2(H, Head).

%helper2([H|T], Head):- Head = H.
%header2([], 0).


dN([], 0).
dN([H],0).
dN([H|T], 1).

dN([H|T], MaxDepth, Acc) :- not is_list(H), dN(T,Acc).
dN([H|T], D, Acc) :- is_list(H), Depth is Acc+1, max(Depth, D, Y), dN(H, Y).
