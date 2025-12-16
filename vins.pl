:-discontiguous nom/2.
:-discontiguous prix/2.
:-discontiguous bouche/2.
:-discontiguous nez/2.
:-discontiguous robe/2.
:-discontiguous appellation/2.
:-discontiguous description/2.
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
%

nom(v1,'Beaumes-de-Venise 2015').
prix(v1, 12.34).
bouche(v1, 
  [ [ 'les aromes de fraise, de violette cotoient les nuances' ],
    [ 'de baies de genevrier, de sureau et une delicate touche' ],
    [ 'de fleur d\'oranger. Cette intensite se poursuit en' ],
    [ 'bouche avec des saveurs juteuses, racees et tres elegantes', '.' ]
  ]).
nez(v1, 
    [ [ nez, intensement, parfume, '.' ] 
]).
description(v1, 
    [ [ 'vignoble situe au sud-est des Dentelles de Montmirail', '.' ],
      [ 'grand vin', '.' ]
]).

%-----------------------------------------------------------------------

nom(v2,'Nuits-Saint-Georges 1er Cru 2013, Les Chaboeufs').
prix(v2, 42.35).

%-----------------------------------------------------------------------
nom(v3,'chateau Moulin de Mallet').
annee(v3,2014).
appellation(v3,'Bordeaux').
prix(v3,5.66).
robe(v3,[['jolie','robe','grenat','aux','reflets','rubis']]).
nez(v3,[['nez','tendrement','parfume','de','fruits','rouges']]).
bouche(v3,[['une robe rouge complete et douce comme un soir d','\'','ete']]).
description(v3,[['un','joli','vin','classique','polyvalent','avec','un','bel','eventail','aromatique','et','des','tannins','fins']]).

