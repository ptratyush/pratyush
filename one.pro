% Facts: Love relationships between people
love(john, mary).
love(paul, mary).
love(anna, peter).
love(jane, paul).

% Facts: Gender of each person
gender(john, male).
gender(paul, male).
gender(anna, female).
gender(jane, female).
gender(mary, female).
gender(peter, male).

% Rule to check if two people are jealous of each other
jealous(X, Y) :-
    love(X, Z),           % X loves Z
    love(Y, Z),           % Y loves Z
    gender(X, GenderX),   % Gender of X
    gender(Y, GenderY),   % Gender of Y
    opposite_gender(GenderX, GenderY).  % Opposite genders

% Helper rule to check if two genders are opposite
opposite_gender(male, female).
opposite_gender(female, male).
