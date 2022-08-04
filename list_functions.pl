myElem(X, [X|_]).
myElem(X, [_|T]) :- myElem(X, T).

myHead(X, [X|_]).

myLast(X, [X]).
myLast(X, [_|T]) :- myLast(X, T).

myTail(X, [_|X]).

%myAppend([3, 2], [1], [3, 2, 1]).

myAppend([], L, L).
myAppend([X|L1], L2, [X|L3]) :- myAppend(L1, L2, L3).

myDelete(X, [X | L1], L1).
%myDelete(X, A, B) :- myAppend(B, A, X).
myDelete(X, [Y | L1], [Y | L2]) :- myDelete(X, L1, L2).

myReverse([], []).
myReverse([X], [X]).
myReverse([H|T], B) :- myReverse(T, A), myAppend(A, [H], B).
