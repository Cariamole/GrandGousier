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
    fusionne(Reste,ResteB).

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


%-----------------------------------------------------------
fusion([auriez,vous],auriezvous).


%-----------------------------------------------------------
fusion([beaumes,de,venise,2015],beaumesdevenise2015).
fusion([beaumes,de,venise],beaumesdevenise2015).
fusion([beaumes],beaumesdevenise2015).

fusion([chateau,moulin,de,mallet],chateaumoulindemallet).
fusion([moulin,de,mallet],chateaumoulindemallet).
fusion([mallet],chateaumoulindemallet).


