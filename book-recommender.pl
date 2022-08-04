% Facts.

% book(title, author, genre, pages).
book(the-great-gatsby, fitzgerald, study, 208).
book(coraline, gaiman, fiction, 210).
book(the-hobbit, tolkien, fiction, 310).
book(1984, orwell, fiction, 328).
book(c, richie, study, 500).
book(monty-python, cleese, comedy, 150).
book(hamlet, shakespeare, drama, 200).
book(macbeth, shakespeare, drama, 300).
book(python-for-dummies, maruch, study, 600).
book(guinness-world-records, i-dont-know, reference, 600).
book(nt_bible, sams, reference, 480).
book(illiad, homer, study, 500).
book(reference-book, some-guy, reference, 300).
book(smol-stoody, studious-author, study, 100).
book(fun-book, fun-author, fiction, 700).

% Rules.

buildLibrary(Lib) :- findall(book(T, A, G, S), book(T, A, G, S), Lib).

literary(H, [H|_]) :- H = book(_, _, drama, _).
literary(B, [_|T]) :- literary(B, T).

holiday(H, [H|_]) :- H = book(_, _, G, S), G \== study, G \== reference, S < 400.
holiday(B, [_|T]) :- holiday(B, T).

revision(H, [H|_]) :- H = book(_, _, G, S), G ==study, S > 300.
revision(H, [H|_]) :- H = book(_, _, G, S), G ==reference, S > 300.
revision(B, [_|T]) :- revision(B, T).

leisure(H, [H|_]) :- H = book(_, _, comedy, _).
leisure(H, [H|_]) :- H = book(_, _, fiction, _).
leisure(B, [_|T]) :- leisure(B, T).


























































