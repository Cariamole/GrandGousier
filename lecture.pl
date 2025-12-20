:-[langage].
/*=====================================
                MOTS-CLES
=======================================*/
mclef(fin,100).
mclef(bouche,5).
mclef(nez,5).
mclef(prix,5).
mclef(vin,5).
mclef(bonjour,5).
mclef(rouge,5).
mclef(appelation,5).
mclef(eur,5).
mclef(description,5).
mclef(maximum,5).
mclef(viande,5).
mclef(volaille,5).
mclef(poisson,5).
mclef(bordeaux,5).
mclef(pinotnoir,5).
mclef(rouge,5).
mclef(blanc,5).



/*=====================================
            LECTURE NOMBRES
=======================================*/
find_num([],[]).
find_num([Head|Tail],[Head|T]):-
    number(Head), !,
    find_num(Tail,T).
find_num([_|Tail],L):-
    find_num(Tail,L).

/*=====================================
        LECTURE MCLES
%test : 
'bouche','sartuie','uritse''nez','stue','rouge','uaie','vin','123','tete','56','unirset'
=======================================*/
find_mclef([],[]).
find_mclef([Head|Tail],[Head|T]):-
    mclef(Head,_),!,
    find_mclef(Tail,T).
find_mclef([_|Tail],L):-
    find_mclef(Tail,L).

/*=====================================
            LECTURE VINS
=======================================*/
find_vin([],[]).
find_vin([Head|Tail],[Head|T]):-
    fusion_vin(_,Head),!,
    find_vin(Tail,T).
find_vin([_|Tail],L):-
    find_vin(Tail,L).

/*=====================================
        LIER MCLES, VINS ET NOMBRES (obsolète - n’est plus utilisé)
=======================================*/
lier_finds(Lin,Lout):-
    find_mclef(Lin,CleOut),
    find_num(Lin,NumOut),
    find_vin(Lin,VinOut),
    append(CleOut,NumOut,TmpOut),
    append(VinOut,TmpOut,Lout).