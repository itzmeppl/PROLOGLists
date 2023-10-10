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

%%%%% SECTION: zipper
%%%%% Predicate definition: zipper(List1, List2, Zipper)


zipper(List1, [], Res) :- Res = List1.
zipper([], List2, Res) :- Res = List2.

zipper([H|T], [H1|T1], [HR, HR2|TR]) :- H = HR, H1 = HR2, zipper(T, T1, TR).

