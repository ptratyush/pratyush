% Base case: Fibonacci series for 0 and 1
fibonacci(0, []).
fibonacci(1, [0]).

% Recursive case: Fibonacci series for N > 1
fibonacci(N, Series) :-
    N > 1,
    Prev is N - 1,
    fibonacci(Prev, PrevSeries),
    fib(N, LastTerm, PrevSeries),
    append(PrevSeries, [LastTerm], Series).

% Calculate Fibonacci number for N
fib(0, 0).
fib(1, 1).
fib(N, F) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fib(N1, F1),
    fib(N2, F2),
    F is F1 + F2.

