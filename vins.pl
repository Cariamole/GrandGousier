:-discontiguous nom/2.
:-discontiguous prix/2.
:-discontiguous bouche/2.
:-discontiguous nez/2.
:-discontiguous robe/2.
:-discontiguous region/2.
:-discontiguous appellation/2.
:-discontiguous description/2.
:-discontiguous annee/2.
:-discontiguous accord/2.
:-discontiguous couleur/2.
:-discontiguous terroir/2.

%---------- Criteres de recherche ----------

critere(Vin,rouge):-
  couleur(Vin,rouge).

critere(Vin,blanc):-
  couleur(Vin,blanc).

critere(Vin,rose):-
  couleur(Vin,rose).

critere(Vin,bordeaux):-
  write("test"),
  region(Vin,bordeaux).

critere(Vin,bourgogne):-
  region(Vin,bourgogne).

critere(Vin,beaujolais):-
  region(Vin,beaujolais).

critere(Vin,rhone):-
  region(Vin,rhone).

critere(Vin,val_de_loire):-
  region(Vin,val_de_loire).


critere(Vin,cognac):-
  appellation(Vin,cognac).

critere(Vin,champagne):-
  appellation(Vin,champagne).

critere(Vin,pinotnoir):-
  appellation(Vin,pinotnoir).

critere(Vin,viande):-
  accord(Vin,viande).

critere(Vin,gibier):-
  accord(Vin,gibier).

critere(Vin,volaille):-
  accord(Vin,volaille).

critere(Vin,poisson):-
  accord(Vin,poisson).




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

%----- Beaumes de Venise -----
nom(beaumesdevenise,'beaumes-de-Venise').
region(beaumesdevenise,bordeaux).
appellation(beaumesdevenise,bordeaux).
couleur(beaumesdevenise,rouge).
annee(beaumesdevenise,2015).
prix(beaumesdevenise, 12.34).
accord(beaumesdevenise,volaille).
accord(beaumesdevenise,viande).

bouche(beaumesdevenise, 
  [ [ 'les aromes de fraise, de violette cotoient les nuances' ],
    [ 'de baies de genevrier, de sureau et une delicate touche' ],
    [ 'de fleur d\'oranger. Cette intensite se poursuit en' ],
    [ 'bouche avec des saveurs juteuses, racees et tres elegantes', '.' ]
  ]).
nez(beaumesdevenise, 
    [ [ nez, intensement, parfume, '.' ] 
]).
description(beaumesdevenise, 
    [ [ 'vignoble situe au sud-est des Dentelles de Montmirail', '.' ],
      [ 'grand vin', '.' ]
]).

%----- Nuits Saint-Georges -----
nom(nuitssaintgeorges,'nuits-Saint-Georges, Les Chaboeufs').
region(nuitssaintgeorges,bourgogne).
appellation(nuitssaintgeorges,pinotnoir).
couleur(nuitssaintgeorges,rouge).
annee(nuitssaintgeorges,2013).
prix(nuitssaintgeorges, 42.35).
accord(nuitssaintgeorges,poisson).

%----- Chateau Moulin de Mallet -----
nom(chateaumoulindemallet,'chateau Moulin de Mallet').
region(chateaumoulindemallet,bordeaux).
appellation(chateaumoulindemallet,bordeaux).
couleur(chateaumoulindemallet,rouge).
annee(chateaumoulindemallet,2014).
prix(chateaumoulindemallet,5.66).
accord(chateaumoulindemallet,viande).

robe(chateaumoulindemallet,[['jolie robe grenat aux reflets rubis']]).
nez(chateaumoulindemallet,[['nez','tendrement','parfume','de','fruits','rouges']]).
bouche(chateaumoulindemallet,[['une touche en bouche complete et douce comme un soir d','\'','ete']]).
description(chateaumoulindemallet,[['un','joli','vin','classique','polyvalent','avec','un','bel','eventail','aromatique','et','des','tannins','fins']]).

%----- Ch. La Fleur Baudron 2014 -----
nom(ch_la_fleur_baudron, 'chateau la Fleur Baudron').
region(ch_la_fleur_baudron, bordeaux).
appellation(ch_la_fleur_baudron, bordeaux).
couleur(ch_la_fleur_baudron, rouge).
annee(ch_la_fleur_baudron, 2014).
prix(ch_la_fleur_baudron, 7.48).

robe(ch_la_fleur_baudron, [['une','robe', 'soutenue']]).
nez(ch_la_fleur_baudron, [
  ['le', 'nez', 'presente', 'des', 'aromes', 'de', 'fruits', 'compotes'],
  ['et', 'd','\'','epices', 'fines', 'associees', 'a', 'une', 'nuance', 'florale', 'violette']]).
bouche(ch_la_fleur_baudron, [
  ['bouche', 'tres', 'plaisante', 'riche', 'et', 'de', 'beaux', 'tannins'],
  ['associes', 'a', 'un', 'boise', 'bien', 'integre', 'du', 'velours']]).
description(ch_la_fleur_baudron, [
  ['magnifique', 'terroir', 'argilo','calcaire'],
  ['a', 'l','\'','arriere', 'de', 'lussac', 'saint', 'emilion'],
  ['reposant', 'sur', 'des', 'sols', 'gravelleux', 'et', 'argilo', 'calcaires'],
  ['un', 'bordeaux', 'tres', 'complet']
  ]).

