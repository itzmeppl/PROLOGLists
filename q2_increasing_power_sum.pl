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

%%%%% SECTION: increasingPowerSum
%%%%% Predicate definition: increasingPowerSum(List, Power, PowerInc, Sum)

increasingPowerSum([], _, _, Sum) :- Sum = 0.
increasingPowerSum(List, Pow, PowInc, Sum) :- helper(List, Pow, PowInc, Sum, 0).

helper([X], Pow, PowInc, Sum, Acc) :- Y is X^Pow, Sum is Y + Acc.

helper([H|T], Pow, PowInc, Sum, Acc) :- Y is H^Pow, Tot is Acc + Y, NewPow is Pow + PowInc, helper(T, NewPow, PowInc, Sum, Tot).
