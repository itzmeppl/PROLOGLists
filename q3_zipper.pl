% Enter the names of your group members below.
% If you only have 2 group members, leave the last space blank
%
%%%%%
%%%%% NAME: Riddhima Garg
%%%%% NAME: Piraveen
%%%%% NAME:
%
% Add the required rules in the corresponding sections. 
% If you put the rules in the wrong sections, you will lose marks.
%
% You may add additional comments as you choose but DO NOT MODIFY the comment lines below
%

%%%%% SECTION: zipper
%%%%% Predicate definition: zipper(List1, List2, Zipper)

zipper([], L2, [Zipper|L2]).
zipper(L1, [], [Zipper|L1]).




zipper([H1|T1], [H2|T2], Zip) :- Newzip = [H1, H2], l1zip(T1,T2, Newzip).

l1zip([], L2, [Zipper|L2]).
l1zip(L1, [], [Zipper|L1]).
l1zip([], [], Zipper).

l1zip([H1|T1], [H2|T2], Zip) :- append(Zip, [H1,H2], Newzip), l1zip(T1, T2, Newzip). 



%zipper([H1|T1], [H2|T2], Zipper) :- Newzip is [H1 | H2], zipHelper(T1, T2, Newzip).
%zipHelper([H1|T1], [H2|T2], Zipper) :- Newzip is [Zipper | [H1, H2]], zip(T1, T2, Newzip).



