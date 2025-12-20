:-discontiguous nom/2.
:-discontiguous prix/2.
:-discontiguous bouche/2.
:-discontiguous nez/2.
:-discontiguous robe/2.
:-discontiguous appellation/2.
:-discontiguous description/2.
:-discontiguous annee/2.
:-discontiguous accord/2.
:-discontiguous couleur/2.


critere(Vin,rouge):-
  couleur(Vin,rouge).

critere(Vin,blanc):-
  couleur(Vin,rouge).

critere(Vin,bordeaux):-
  couleur(Vin,bordeaux).

critere(Vin,pinotnoir):-
  couleur(Vin,pinotnoir).
%que donne le beaumes de venise 2015 en bouche

%nom(2,['Château','La','Fleur','Baudron']).
%annee(2,2014).
%appellation(2,'Bordeaux').
%prix(2,6.18).
%bouche(2,['Bouche','tres','plaisante,','riche,','et','de','beaux','tannins','associes','a','un','boise','bien','integre.','Du','velours']).
%nez(2,['Le','nez','presente','des','aromes','de','fruits','compotes','et','d','epices','fines','associees','a','une','nuance','florale']).
%robe(2,['Robe','soutenue']).
%description(2,['Un','Bordeaux','tres','complet']). 
%
%nom(3,['Château','Bois','Vert','«','Cuvee','Elegance','»']).
%annee(3,2014).
%prix(3,6.7).
%bouche(3,['En','bouche,','les','saveurs','sont','genereuses,','tres','plaisantes','avec','cette','rondeur','caracteristique','du','merlot']).
%nez(3,['Une','jolie','note','boisee','s','integre','avec','elegance','aux','aromes','dominants','de','violette','et','de','cassis','associes','a','une','nuance','empyreumatique']).
%robe(3,['vin','veloute']).
%description(3,['On','garde','le','souvenir','d','un','vin','veloute','et','harmonieux.']).
%



nom(beaumesdevenise,'beaumes-de-Venise').
prix(beaumesdevenise, 12.34).
bouche(beaumesdevenise, 
  [ [ 'les aromes de fraise, de violette cotoient les nuances' ],
    [ 'de baies de genevrier, de sureau et une delicate touche' ],
    [ 'de fleur d\'oranger. Cette intensite se poursuit en' ],
    [ 'bouche avec des saveurs juteuses, racees et tres elegantes', '.' ]
  ]).
annee(beaumesdevenise,2015).
nez(beaumesdevenise, 
    [ [ nez, intensement, parfume, '.' ] 
]).
description(beaumesdevenise, 
    [ [ 'vignoble situe au sud-est des Dentelles de Montmirail', '.' ],
      [ 'grand vin', '.' ]
]).
accord(beaumesdevenise,volaille).
couleur(beaumesdevenise,rouge).
appellation(beaumesdevenise,bordeaux).


%-----------------------------------------------------------------------

nom(nuitssaintgeorges,'nuits-Saint-Georges, Les Chaboeufs').
annnee(nuitssaintgeorges,2013).
prix(v2, 42.35).
accord(nuitssaintgeorges,poisson).
couleur(nuitssaintgeorges,rouge).
appellation(nuitssaintgeorges,pinotnoir).

%-----------------------------------------------------------------------
nom(chateaumoulindemallet,'chateau Moulin de Mallet').
annee(chateaumoulindemallet,2014).
appellation(chateaumoulindemallet,bordeaux).
prix(chateaumoulindemallet,5.66).
robe(chateaumoulindemallet,[['jolie','robe','grenat','aux','reflets','rubis']]).
nez(chateaumoulindemallet,[['nez','tendrement','parfume','de','fruits','rouges']]).
bouche(chateaumoulindemallet,[['une touche en bouche complete et douce comme un soir d','\'','ete']]).
description(chateaumoulindemallet,[['un','joli','vin','classique','polyvalent','avec','un','bel','eventail','aromatique','et','des','tannins','fins']]).
accord(chateaumoulindemallet,viande).
