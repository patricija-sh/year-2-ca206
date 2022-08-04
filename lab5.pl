% classifying numbers
%

class(0, 0) :- !.
class(X, negative) :- X < 0, !.
class(X, positive) :- X > 0, !.


% splitting list

split([], _, _). % split([-1, 1, 3, 2], [1, 2, 3], [-1, -2]). returns true

% split([], [], []). % split([-1, 1, 3, 2], [1, 2, 3], [-1, -2]).
% returns false

split([H|T], Pos, Neg) :- H > 0, member(H, Pos), !, delete(Pos, H, Pos1), split(T, Pos1, Neg).
split([H|T], Pos, Neg) :- H < 0, member(H, Neg), !, delete(Neg, H, Neg1), split(T, Pos, Neg1).


% David's way.
split2([], [], []).
split2([X| Nums1], [X|Pos], Neg) :- X > 0, !, split2(Nums1, Pos, Neg).
split2([X| Nums1], Pos, [X|Neg]) :- X < 0, !, split2(Nums1, Pos, Neg).






