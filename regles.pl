:-[vins].
:-[langage].
:- discontiguous regle_rep/4.

% ----------------vin-------------------%

regle_rep([],[Vin],[],Rep):-
   write(Vin),nl,
   nom(Vin,Nom),
   appellation(Vin,Appel),
   annee(Vin,Annee),
   prix(Vin,Prix),
   write("test"),nl,
   Rep = [[ Nom,Annee,'est un vin de', Appel, '(', Prix, ' EUR )' ]].

%--------------Bouche---------------
/*regle_rep(bouche,1,
  [ que, donne, le, Vin, en, bouche ],
  Rep ) :-

     bouche(Vin,Rep).*/

/*
regle_rep(bouche,2,Ques,Rep):-
   length(Ques,2),
   member(bouche,Ques),
   member(Vin,Ques),
   fusion(_,Vin),
   bouche(Vin,Rep).
*/


regle_rep(LCle,[Vin],[],Rep):-
   member(bouche,LCle),
   bouche(Vin,Rep).

% ----------------Nez-------------------%

/*
regle_rep(nez,2,Ques,Rep):-
   length(Ques,2),
   member(nez,Ques),
   member(Vin,Ques),
   fusion(_,Vin),
   nez(Vin,Rep).   
*/

regle_rep(LCle,[Vin],[],Rep):-
   member(nez,LCle),
   nez(Vin,Rep).

% ----------------Description-------------------%
/*
regle_rep(description,2,Ques,Rep):-
   length(Ques,2),
   member(description,Ques),
   member(Vin,Ques),
   fusion(_,Vin),
   description(Vin,Rep). 
*/
regle_rep(LCle,[Vin],[],Rep):-
   member(description,LCle),
   description(Vin,Rep).
% ----------------------min/max budget-------------------------------%
%Max X eur
regle_rep(Mots,[],[Max],Rep):-
   member(eur,Mots),
   member(maximum,Mots),
   lvins_prix_max(Max,Lvins),
   rep_lvins_min_max(Lvins,Rep).


%entre min et max
regle_rep(Mots,[],Nombres,Rep):-
   member(eur,Mots),
   list_max(Nombres,Max),
   list_min(Nombres,Min),
   Max > Min,
   lvins_prix_min_max(Min,Max,Lvins),
   rep_lvins_min_max(Lvins,Rep).



/*
regle_rep(vin,1,
   [ auriezvous, un, vin, entre, X, et, Y, eur ],
   Rep) :-
      lvins_prix_min_max(X,Y,Lvins),
      rep_lvins_min_max(Lvins,Rep).
   */
  
  
rep_lvins_min_max([], [[ non, '.' ]]).
rep_lvins_min_max([H|T], [ [ oui, '.', je, dispose, de ] | L]) :-
   rep_litems_vin_min_max([H|T],L).

rep_litems_vin_min_max([],[]) :- !.
rep_litems_vin_min_max([(V,P)|L], [Irep|Ll]) :-
   nom(V,Appellation),
   Irep = [ '- ', Appellation, '(', P, ' EUR )' ],
   rep_litems_vin_min_max(L,Ll).

prix_vin_min_max(Vin,P,Min,Max) :-
   prix(Vin,P),
   Min =< P, P =< Max.
lvins_prix_min_max(Min,Max,Lvins) :-
   findall( (Vin,P) , prix_vin_min_max(Vin,P,Min,Max), Lvins ).


lvins_prix_max(Max,Lvins) :-
   findall( (Vin,P) , prix_vin_max(Vin,P,Max), Lvins ).
prix_vin_max(Vin,P,Max) :-
   prix(Vin,P),
   P =< Max.

/*================================================================
                        Bonjour
=================================================================*/

regle_rep([bonjour],[],[],Rep):-
   Rep=[['bonjour','posez','une','question','et','je','serai','ravi','d','\'','essayer','d','\'','y','repondre']].

/*================================================================
                        Criteria
=================================================================*/
regle_rep(Mots,[],[],Rep):-
   length(Mots, N),
   N>1,   
   trouver_vins(Mots,Vins),
   rep_lvins_crit(Vins,Rep).

trouver_vins(Criteres,Vins):-
   findall(Vin,(nom(Vin,_),criteres(Vin,Criteres)),VinsAll),
   sort(VinsAll,Vins).

criteres(_,[]).
criteres(Vin, [Critere|Reste]):-
   clause(critere(_,Critere),_)->
      critere(Vin,Critere),
      criteres(Vin,Reste)
      ;
   criteres(Vin,Reste).

rep_lvins_crit([],[[non,'.']]).
rep_lvins_crit([H|T], [ [ oui, '.', je, dispose, de ] | L]) :-
   rep_litems_crit([H|T],L).

rep_litems_crit([],[]) :- !.
rep_litems_crit([V|L], [Irep|Ll]) :-
   nom(V,Appellation),
   prix(V,P),
   
   Irep = [ '- ', Appellation, '(', P, ' EUR )' ],
   rep_litems_crit(L,Ll).


/*================================================================
                        PRÉDICATS DIVERS
=================================================================*/

find_avant(Vin,AnneeR,AnneeDemande):-
   annee(Vin,AnneeR),
   AnneeR<AnneeDemande.

lvins_Avant(Vin,Annee,Lvins):-
   findall((Vin,AnneeR),find_avant(Vin,AnneeR,Annee),Lvins).

list_max([P|T], O) :- list_max(T, P, O).

list_max([], P, P).
list_max([H|T], P, O) :-
    (    H > P
    ->   list_max(T, H, O)
    ;    list_max(T, P, O)).


list_min([P|T], O) :- list_min(T, P, O).

list_min([], P, P).
list_min([H|T], P, O) :-
    (    H < P
    ->   list_min(T, H, O)
    ;    list_min(T, P, O)).





   
