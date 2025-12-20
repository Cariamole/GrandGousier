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

simil(poulet,volaille).
simil(canard,volaille).
simil(dinde,volaille).

simil(boeuf,viande).
simil(porc,viande).

simil(rouges,rouge).

%-----------------------------------------------------------
fusion([auriez,vous],auriezvous).
fusion([moins,de],maximum).
fusion([pinot,noir],pinotnoir).



%-----------------------------------------------------------
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



