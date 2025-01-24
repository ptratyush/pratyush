% Base case: factorial of 0 is 1
factorial(0, 1).

% Recursive case: factorial of n is n times factorial of (n-1)
factorial(N, F) :- 
    N > 0,
    Prev is N - 1,
    factorial(Prev, F1),
    F is N * F1.
