% Facts: Marriage relationships
married(john, mary).    % John is married to Mary
married(paul, jane).    % Paul is married to Jane
married(anna, peter).   % Anna is married to Peter
married(peter, anna).   % Peter is married to Anna (for bidirectionality)

% Facts: Sibling relationships
sibling(john, anna).    % John is a sibling of Anna
sibling(mary, jane).    % Mary is a sibling of Jane
sibling(paul, peter).   % Paul is a sibling of Peter

% Sibling relationships are bidirectional (if X is a sibling of Y, then Y is a sibling of X)
sibling(X, Y) :- sibling(Y, X).

% Gender facts (used to distinguish male and female)
gender(john, male).
gender(paul, male).
gender(peter, male).
gender(mary, female).
gender(jane, female).
gender(anna, female).

% Rules for brother-in-law and sister-in-law

% A brother-in-law is:
% 1. The husband of someone's sister.
brother_in_law(X, Y) :- 
    married(X, Z),         % X is married to Z
    sibling(Z, Y),         % Z is a sibling of Y
    gender(X, male).       % X is male (brother-in-law)

% 2. The brother of someone's spouse.
brother_in_law(X, Y) :- 
    married(Y, Z),         % Y is married to Z
    sibling(X, Z),         % X is a sibling of Z
    gender(X, male).       % X is male (brother-in-law)

% A sister-in-law is:
% 1. The wife of someone's brother.
sister_in_law(X, Y) :- 
    married(X, Z),         % X is married to Z
    sibling(Z, Y),         % Z is a sibling of Y
    gender(X, female).     % X is female (sister-in-law)

% 2. The sister of someone's spouse.
sister_in_law(X, Y) :- 
    married(Y, Z),         % Y is married to Z
    sibling(X, Z),         % X is a sibling of Z
    gender(X, female).     % X is female (sister-in-law)

