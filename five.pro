% Main predicate to print the multiplication table for a given number N
print_table(N) :-
    print_multiplication(N, 1).  % Start with multiplier 1

% Base case: when multiplier exceeds 10, stop the recursion
print_multiplication(_, 11) :- !.

% Recursive case: print the result of N * I and then call the next multiplier
print_multiplication(N, I) :-
    Result is N * I,            % Calculate the multiplication result
    format('~w * ~w = ~w~n', [N, I, Result]),  % Print the result in a formatted manner
    NextI is I + 1,             % Increment the multiplier
    print_multiplication(N, NextI).  % Recurse with the next multiplier

