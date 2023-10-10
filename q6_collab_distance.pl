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

%% To help you test your collabDistance, you may put your knowledge base below. Do not put it under the colladDistance
%% section. You may also delete your test knowledge based before submission, as we will not be marking it


%%%%% SECTION: collabDistance
%%%%% Predicate definition: collabDist(Author1, Author2, MaxDist, Authors, Articles)

%%%%% SECTION: article topic

articleTopic(functional_programming_in_python, programming).
articleTopic(predictive_analytics_and_algorithmic_trading, ai).
articleTopic(advances_in_humanoid_and_autonomous_robot_systems, ai).
articleTopic(leveraging_unlabeled_data_for_improved_model_performance, machine_learning).
articleTopic(techniques_for_scene_reconstruction_and_object_localization, computer_vision).



%%%%% SECTION: collabDist
% Put your rules for collabDist in this section 
collabDist(X, Y, 0) :- X==Y, articleAuthor(Z, X).
collabDist(X, Y, 1) :- articleAuthor(Z, X), articleAuthor(Z, Y).
collabDist(X, Y, Z) :- Z > 1, articleAuthor(K,X), articleAuthor(K, L), M is Z - 1, collabDist(L, Y, M).
