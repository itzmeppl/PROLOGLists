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

%%%%% SECTION: partitionMonths
%%%%% Predicate definition: partitionMonths(Months, Prices, Increase, Decrease)

partitionMonths(Months, Prices, Increase, Decrease) :- helper(Months, Prices, Increase, Decrease, [], []).

helper([_,B], [P1,P2], Increase, Decrease, TIncrease, TDecrease) :- P2 >= P1, append(TIncrease, [B], X), Increase = X, Decrease = TDecrease.
helper([_,B], [P1,P2], Increase, Decrease, TIncrease, TDecrease) :- P2 < P1, append(TDecrease, [B], X), Decrease = X, Increase = TIncrease.

helper([H,H1|T], [HP, HP1|TP], Increase, Decrease, TempIncrease, TempDecrease) :- T \= [], TP \= [], HP1 >= HP, append(TempIncrease, [H1], X), append([H1], T, CurrMonth), append([HP1], TP, CurrPrice), helper(CurrMonth, CurrPrice, Increase, Decrease, X, TempDecrease).
helper([H,H1|T], [HP, HP1|TP], Increase, Decrease, TempIncrease, TempDecrease) :- T \= [], TP \= [], HP1 < HP, append(TempDecrease, [H1], X), append([H1], T, CurrMonth), append([HP1], TP, CurrPrice), helper(CurrMonth, CurrPrice, Increase, Decrease, TempIncrease, X).
