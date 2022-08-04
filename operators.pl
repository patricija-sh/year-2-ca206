% fibonacci code

% facts
fib(0, 1).
fib(1, 1).

% predicates
%
% Y is the fibonacci number of X.
% Y is the sum of the fibonacci numbers of (X - 1) + (X - 2).
% ! stops prolog from backtracking for another answer since there's only
% one.
fib(X, Y) :- X > 1, X1 is X - 1, X2 is X - 2,
    fib(X1, Z), fib(X2, W),
    Y is Z + W, !.


% area of triangle.

:- op(500, yfx, tA).

tA(A/B, Y) :- Y is (1/2)*A*B.

X/Y tA Z :- Z is 0.5*X*Y.
