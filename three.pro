% Facts: Direct friendships
friend(john, mary).
friend(mary, paul).
friend(paul, jane).
friend(jane, anna).

% Rule: Bidirectional friendship (if X is friends with Y, then Y is friends with X)
friend(X, Y) :- friend(Y, X).

% Rule: Indirect (recursive) friendship (transitive)
friend(X, Y) :-
    friend(X, Z),      % X is friends with Z
    friend(Z, Y),      % Z is friends with Y
    X \= Y.            % Ensure X is not the same as Y (avoid self-friendship)
