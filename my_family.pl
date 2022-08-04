/* FACTS */

parent(betty, molly).  % pam and molly are sisters.
parent(pat, molly).    % betty is the mother of pam and molly.
parent(betty, pam).    % pam is the father of pam and molly.
parent(pat, pam).

parent(melissa, tom).  % tom and brady are brothers.
parent(george, tom).   % melissa is the mother of tom and brady.
parent(melissa, brady).% george is the father of tom and brady.
parent(george, brady).

parent(pam, bob).      % bob and liz and half-siblings.
parent(tom, bob).      % pam is the mother of tom.
parent(tom, liz).      % tom is the father of bob and liz.
                       % brady is the uncle of liz and bob.
                       % molly is the aunt of bob

parent(molly, mike).   % molly is the mother of mike.
                       % mike is the cousin of bob.

female(betty).
male(pat).

female(molly).
female(pam).

female(melissa).
male(george).

male(tom).
male(brady).

male(bob).
female(liz).

female(ann).

/* Relationships */

child(X, Y) :- parent(Y, X).

father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).

grandfather(X, Y) :- father(X, Z), father(Z, Y).
grandfather(X, Y) :- father(X, Z), mother(Z, Y).

grandmother(X, Y) :- mother(X, Z), mother(Z, Y).
grandmother(X, Y) :- mother(X, Z), father(Z, Y).

different(X, Y) :- X \= Y.

brother(X, Y) :- male(X), father(Z, X), father(Z, Y), different(X, Y).
% brother(X, Y) :- male(X), mother(Z, X), mother(Z, Y).

sister(X, Y) :- female(X), father(Z, X), father(Z, Y), different(X, Y).
% sister(X, Y) :- female(X), mother(Z, X), mother(Z, Y).

uncle(X, Y) :- brother(X, Z), parent(Z, Y).
aunt(X, Y) :- sister(X, Z), parent(Z, Y).

cousin(X, Y) :- parent(Z, X), parent(W, Y), sister(Z, W).
cousin(X, Y) :- parent(Z, Y), parent(W, X), brother(Z, W).













