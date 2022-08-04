% Facts

% North

north(a, f).
north(b, g).
north(c, h).
north(d, i).
north(e, j).

north(f, k).
north(g, l).
north(h, m).
north(i, n).
north(j, o).

north(k, p).
north(l, q).
north(m, r).
north(n, s).
north(o, t).

% East

east(b, a).
east(g, f).
east(l, k).
east(q, p).

east(c, b).
east(h, g).
east(m, l).
east(r, q).

east(d, c).
east(i, h).
east(n, m).
east(s, r).

east(e, d).
east(j, i).
east(o, n).
east(t, s).


% Rules
south(X, Y) :- north(Y, X).
west(X, Y) :- east(Y, X).

north_east(X, Y) :- north(Z, Y), east(X, Z).
north_west(X, Y) :- north(Z, Y), west(X, Z).

south_east(X, Y) :- south(Z, Y), east(X, Z).
south_west(X, Y) :- south(Z, Y), west(X, Z).

%       (a, p) :- north(a, p).
%       (a, p) :- north(f, p), duenorth(a, f).
duenorth(X, Y) :- north(X, Y).
duenorth(X, Y) :- north(X, Z), duenorth(Z, Y).

%       (q, b) :- south(q, b).
%       (q, b) :- south(q, g), g, b
duesouth(X, Y) :- south(X, Y).
duesouth(X, Y) :- south(X, Z), duesouth(Z, Y).

%      (e, d) :- west(e, d).
%      (e, a) :- west(e, d), d, a
duewest(X, Y) :- west(X, Y).
duewest(X, Y) :- west(X, Z), duewest(Z, Y).

dueeast(X, Y) :- east(X, Y).
dueeast(X, Y) :- east(X, Z), dueeast(Z, Y).

duenortheast(X, Y) :- north_east(X, Y).
duenortheast(X, Y) :- north_east(X, Z), duenortheast(Z, Y).

duenorthwest(X, Y) :- north_west(X, Y).
duenorthwest(X, Y) :- north_west(X, Z), duenorthwest(Z, Y).

duesoutheast(X, Y) :- south_east(X, Y).
duesoutheast(X, Y) :- south_east(X, Z), duesoutheast(Z, Y).

duesouthwest(X, Y) :- south_west(X, Y).
duesouthwest(X, Y) :- south_west(X, Z), duesouthwest(Z, Y).








