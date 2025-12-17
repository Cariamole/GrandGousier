% Test
testa(A) :-
    write("input : "), write(A), nl,
    rewrite(A, B),
    write("output : "), write(B), nl.

find_num([],[]).
find_num([Head|Tail],[H|T]):-
    atom_number(Head, H), !,
    find_num(Tail,T).
find_num([_|Tail],L):-
    find_num(Tail,L).

test(A):-
    %write("Entree"),nl,write(A),
    number_string(B,A),
    write(B).