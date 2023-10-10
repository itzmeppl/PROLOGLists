% Enter the names of your group members below.
% If you only have 2 group members, leave the last space blank
%
%%%%%
%%%%% NAME: Riddhima Garg
%%%%% NAME: Piraveen Daya
%%%%% NAME:
%
% Add the required rules in the corresponding sections. 
% If you put the rules in the wrong sections, you will lose marks.
%
% You may add additional comments as you choose but DO NOT MODIFY the comment lines below
%

%% To help you test your collabDistance, you may put your knowledge base below. Do not put it under the colladDistance
%% section. You may also delete your test knowledge based before submission, as we will not be marking it


%%%%% SECTION: articleAuthor
articleAuthor(article, tom).
articleAuthor(article, jennifer).
articleAuthor(article2, jennifer).
articleAuthor(article2, tina).
articleAuthor(article3, tina).
articleAuthor(article3, jay).
articleAuthor(article4, jay).
articleAuthor(article4, donna).
articleAuthor(article5, donna).
articleAuthor(article5, tom).
articleAuthor(article6, jennifer).
articleAuthor(article6, jay).
articleAuthor(article7, jay).
articleAuthor(article7, bob).
articleAuthor(article8, donna).
articleAuthor(article8, bob).

collabDist(A1, A1, MaxDist, Authors, Articles) :- MaxDist >= 0, articleAuthor(X,A1), Authors = [A1], Articles = [X].
collabDist(A1, A2, MaxDist, Authors, Articles) :- dist(A1, A2, MaxDist, X, Y, [], []), Authors = X, Articles = Y.

dist(A1, A2, 1, Authors, Articles, TempAu, TempAr) :- articleAuthor(X, A1), articleAuthor(X, A2), A1 \= A2, helper(A1, TempAu, FoundA1), FoundA1 == 0, helper(A2, TempAu, FoundA2), FoundA2 == 0, helper(X, TempAr, FoundX), FoundX == 0, append(TempAu, [A1, A2], NewAu), append(TempAr, [X], NewAr), Articles = NewAr, Authors = NewAu.

dist(A1, A2, MaxDist, Authors, Articles, TempAu, TempAr) :- MaxDist > 1, articleAuthor(X, A1), articleAuthor(X, TempA), helper(X, TempAr, FoundX), FoundX == 0, helper(A1, TempAu, FoundA1), FoundA1 == 0, Dist is MaxDist - 1, append(TempAu, [A1], NewAu),  append(TempAr, [X], NewAr), dist(TempA, A2, Dist, Authors, Articles, NewAu, NewAr).
dist(A1, A2, MaxDist, Authors, Articles, TempAu, TempAr) :- MaxDist > 1, articleAuthor(X, A1), Dist is MaxDist - 1, dist(A1, A2, Dist, Authors, Articles, TempAu, TempAr).


helper(Item, List, Found) :- help(Item, List, X, 0), Found = X.

help(Item, [], Found, 0) :- Found = 0.
help(Item, [H|_], Found, 0) :- H == Item, Found = 1. 
help(Item, [H|T], Found, 0) :- H \= Item, help(Item, T, Found, 0).
