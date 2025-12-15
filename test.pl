% Base de similarité
simi(salut, bonjour).

% Réécriture d'une liste
rewrite([], []).
rewrite([Mot|Reste], [New|NewReste]) :-
    ( simi(Mot, New) -> write("oui "), write(Mot), nl ; New = Mot ),
    rewrite(Reste, NewReste).

% Test
test(A) :-
    write("input : "), write(A), nl,
    rewrite(A, B),
    write("output : "), write(B), nl.