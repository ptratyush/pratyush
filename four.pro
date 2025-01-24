% Graph representation as edges
edge(a, 1).
edge(a, 3).
edge(1, 2).
edge(1, 4).
edge(3, 4).
edge(4, 5).
edge(2, 5).

% Base case: A path exists from a node to itself.
path(X, X, _).

% Recursive case: If there's an edge from X to Z, and Z hasn't been visited yet, 
% we continue searching for the path from Z to the target Y.
path(X, Y, Visited) :-
    edge(X, Z),                % There's an edge from X to Z
    Z \= Y,                     % Z is not the target Y (to avoid infinite loops)
    \+ member(Z, Visited),     % Z hasn't been visited yet
    path(Z, Y, [Z|Visited]).   % Recurse with Z as the new start node and add Z to the visited list

% To start the search, we simply call the path predicate without an initial visited list.
path(X, Y) :- path(X, Y, [X]).

