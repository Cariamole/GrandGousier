:-[vins].
:-[langage].
:- discontiguous regle_rep/4.

% ----------------vin-------------------%

regle_rep([],[Vin],[],Rep):-
   nom(Vin,Nom),
   appellation(Vin,Appel),
   annee(Vin,Annee),
   prix(Vin,Prix),
   Rep = [ Nom,Annee,'est un vin de ', Appel, '(', Prix, ' EUR )' ].

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
% ----------------------------------------------------------------%

regle_rep(vin,1,
   [ auriezvous, un, vin, entre, X, et, Y, eur ],
   Rep) :-
      lvins_prix_min_max(X,Y,Lvins),
      rep_lvins_min_max(Lvins,Rep).
   

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

/*================================================================
                        PRÉDICATS DIVERS
=================================================================*/

find_avant(Vin,AnneeR,AnneeDemande):-
   annee(Vin,AnneeR),
   AnneeR<AnneeDemande.

lvins_Avant(Vin,Annee,Lvins):-
   findall((Vin,AnneeR),find_avant(Vin,AnneeR,Annee),Lvins).




regle_rep(bonjour,1,[bonjour],Rep):-
   Rep=[['bonjour','posez','une','question','et','je','serai','ravi','d','\'','essayer','d','\'','y','repondre']].
   
