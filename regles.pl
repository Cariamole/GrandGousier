:-[vins].
:-[langage].
:- discontiguous regle_rep/4.

% ----------------vin-------------------%

regle_rep([],[Vin],[],Rep):-
   nom(Vin,Nom),
   region(Vin,Region),
   appellation(Vin, Appellation),
   annee(Vin,Annee),
   prix(Vin,Prix),
   Rep = [[ Nom,Annee,'est un vin de', Region, ':', Appellation, '(', Prix, ' EUR )' ]].

%--------------Bouche---------------

regle_rep(LCle,[Vin],[],Rep):-
   member(bouche,LCle),
   bouche(Vin,Rep).

% ----------------Nez-------------------%

regle_rep(LCle,[Vin],[],Rep):-
   member(nez,LCle),
   nez(Vin,Rep).
% ----------------robe-------------------%

regle_rep(LCle,[Vin],[],Rep):-
   member(robe,LCle),
   robe(Vin,Rep).
% ----------------Description-------------------%

regle_rep(LCle,[Vin],[],Rep):-
   member(description,LCle),
   description(Vin,Rep).

% ---------------- Accord des mets --------------- %

regle_rep(LCle,[Vin],[],[Rep]):-
   member(accord,LCle),
   nom(Vin,Nom),
   findall(Accord,accord(Vin,Accord),Accords),
   Irep = [Nom,'s\'accorde','bien','avec','les','mets','suivants',':'],
   append(Irep,Accords,Rep).

% ----------------------min/max budget-------------------------------%
%Max X eur
regle_rep(Mots,[],[Max],Rep):-
   member(eur,Mots),
   member(maximum,Mots),
   lvins_prix_max(Max,Lvins),
   rep_lvins_min_max(Lvins,Rep).

%Min X eur
regle_rep(Mots,[],[Min],Rep):-
   member(eur,Mots),
   member(minimum,Mots),
   lvins_prix_min(Min,Lvins),
   rep_lvins_min_max(Lvins,Rep).

%entre min et max
regle_rep(Mots,[],Nombres,Rep):-
   member(eur,Mots),
   list_max(Nombres,Max),
   list_min(Nombres,Min),
   Max > Min,
   lvins_prix_min_max(Min,Max,Lvins),
   rep_lvins_min_max(Lvins,Rep).
  

rep_lvins_min_max([], [[ non, '.' ]]).
rep_lvins_min_max([H|T], [ [ oui, '.', je, dispose, de ] | L]) :-
   rep_litems_vin_min_max([H|T],L).

rep_litems_vin_min_max([],[]) :- !.
rep_litems_vin_min_max([(V,P)|L], [Irep|Ll]) :-
   nom(V,Nom),
   Irep = [ '- ', Nom, '(', P, ' EUR )' ],
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

lvins_prix_min(Min,Lvins) :-
   findall( (Vin,P), prix_vin_min(Vin,P,Min), Lvins).

prix_vin_min(Vin,P,Min) :-
   prix(Vin,P),
   P >= Min.

/*================================================================
                        Bonjour
=================================================================*/

regle_rep([bonjour],[],[],Rep):-
   Rep=[['bonjour','posez','une','question','et','je','serai','ravi','d','\'','essayer','d','\'','y','repondre']].

/*================================================================
                        Criteria
=================================================================*/
% Recherche de vin par millesime
regle_rep(Mots,[],Annees,Rep):-
   Mots \= [],
   Annees \= [],
   member(millesime,Mots),
   min_list(Annees,Min),
   max_list(Annees,Max),
   Min >= 1950,
   Max =<2030,
   findall(Vin,(annee(Vin,Annee),number(Annee), Annee >= Min, Annee =< Max),Vins),
   rep_lvins_crit(Vins,Rep).

% Recherche de vins par critères (mots-clés)
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
   nom(V,Region),
   prix(V,P),
   
   Irep = [ '- ', Region, '(', P, ' EUR )' ],
   rep_litems_crit(L,Ll).


/*================================================================
                        PRÉDICATS DIVERS
=================================================================*/

/* ========== Recherche du min et du max dans une liste de nombres ==========*/

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





   
