rewrite([], []).
rewrite([Mot|Reste], [New|NewReste]) :-
    once(simil(Mot, New); New = Mot),
    rewrite(Reste, NewReste).
%-----------------------------------------------------------

fusionne([],[]).

fusionne(L,[Mot|Reste]):-
    fusion(Pattern,Mot),
    prefix(Pattern, L),
    append(Pattern,ResteB,L),!,
    fusionne(ResteB,Reste).


fusionne(L,[Mot|Reste]):-
    fusion_vin(Pattern,Mot),
    prefix(Pattern, L),
    append(Pattern,ResteB,L),!,
    fusionne(ResteB,Reste).

fusionne([Mot|Reste],[Mot|ResteB]):-
    fusionne(Reste,ResteB).

%-----------------------------------------------------------

simil(salut,bonjour).
simil(coucou,bonjour).

simil(aurevoir,fin).
simil(fini,fin).

simil(euros,eur).
simil(euro,eur).
simil(e,eur).

simil(les,le).
simil(des,un).
simil(vins,vin).

simil(decrire,description).
simil(decrit,description).
simil(decris,description).

simil(max,maximum).
simil(min,minimum).

simil(poulet,volaille).
simil(canard,volaille).
simil(dinde,volaille).

simil(boeuf,viande).
simil(porc,viande).

simil(gibiers,gibier).

simil(crustace,poisson).
simil(crustaces,poisson).
simil(poissons,poisson).

simil(rouges,rouge).
simil(blancs,blanc).
simil(roses,rose).
simil(champgagnes,champagne).
simil(cognacs,cognac).
simil(bordeau,bordeaux).
simil(bordelais,bordeaux).

simil(exceptionnel, exception).
simil(exceptionnels, exception).

%---------- fusion : normalisation de mots du langage ----------
fusion([auriez,vous],auriezvous).
fusion([dire,plus],description). % Peux-tu m'en dire plus....
fusion([moins,de],maximum).
fusion([au,plus],maximum).
fusion([plus,de],minimum).
fusion([au,moins],minimum).
fusion([a,partir,de],minimum).
fusion([pinot,noir],pinotnoir).
fusion([cote,rhone],rhone).
fusion([cotes,rhone],rhone).
fusion([vallee,du,rhone],rhone).
fusion([languedoc],rhone).

%---------- fusion_vin : normalisation de noms de vins ----------
fusion_vin([beaumes,de,venise],beaumesdevenise).
fusion_vin([beaumes],beaumesdevenise).
fusion_vin([beaume],beaumesdevenise).

fusion_vin([chateau,moulin,de,mallet],chateaumoulindemallet).
fusion_vin([moulin,de,mallet],chateaumoulindemallet).
fusion_vin([mallet],chateaumoulindemallet).

fusion_vin([nuits,saint,georges],nuitssaintgeorges).
fusion_vin([nuit,saint,georges],nuitssaintgeorges).
fusion_vin([saint,georges],nuitssaintgeorges).
fusion_vin([les,chaboeufs],nuitssaintgeorges).
fusion_vin([chaboeufs],nuitssaintgeorges).



%---------- Bordeaux ----------
fusion_vin([fleur,baudron],ch_la_fleur_baudron).
fusion_vin([fleur,de,baudron],ch_la_fleur_baudron).
fusion_vin([baudron],ch_la_fleur_baudron).

fusion_vin([bois,vert],ch_bois_vert).

fusion_vin([paret], ch_paret).

fusion_vin([menota], ch_menota).

fusion_vin([polyanthas], ch_les_polyanthas).

fusion_vin([menotte], ch_la_menotte).

fusion_vin([fleur,de,pomys], la_fleur_de_pomys).
fusion_vin([pomys], la_fleur_de_pomys).

fusion_vin([florilege,pauillac], florilege_pauillac).
