
% true if  C contains only even numbers in either A or B.
% union(A, B, C).

not_even2([H | _]) :- mod(H, 2) =:= 1.
not_even2([_ | T]) :- not_even2(T).


list_member2(X, [X |_]).
list_member2(X, [_ | T]) :- list_member(X, T).

union2([], Z, Z).
union2([X | Y], Z, W) :- list_member(X, Z), union2(Y, Z, W).
union2([X | Y], Z, [X | W]) :- \+ list_member(X, Z), union2(Y, Z, W).

intersection2([], _, []).
intersection2([X | Y], M, [X | Z]) :- list_member(X, M), intersection(Y, M, Z).
intersection2([X | Y], M, Z) :- \+ list_member(X, M), intersection(Y, M, Z).

sumlist2([], 0).
sumlist2([H | T], N) :- sumlist(T, N1), N is N1 + H.

% oddsquaresum(X, S) S is sum of odd nums^2 in list X
% oddsquaresum([4, o, 5, 2, 7, apples, 1], 75).
oddsquaresum([], 0).
oddsquaresum([H|T], Y) :-  Z is mod(H,2), Z =:= 0, oddsquaresum(T, Y).
oddsquaresum([H | T], N) :- oddsquaresum(T, N1), N is N1 + H * H, !.

factorial(0, 1).
factorial(N, F) :- N > 0,
    N1 is N - 1,
    factorial(N1, F1),
    F is F1 * N.


timetable(dublin, london, [8:20/9:25/ei101/[mo, tu, th, fr], 10:05/11:10/ba201/alldays, 14:30/15:35/[mo, we, fr, sa]]).


time(Hour, Minute).
departure(time).
arrival(time).

route(Start/End/Departure/Arrival).

journey(Start, End).
