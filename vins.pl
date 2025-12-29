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

critere(Vin,ambre):-
  couleur(Vin,ambre).

critere(Vin,bordeaux):-
  region(Vin,bordeaux).

critere(Vin,bourgogne):-
  region(Vin,bourgogne).

critere(Vin,beaujolais):-
  region(Vin,beaujolais).

critere(Vin,rhone):-
  region(Vin,rhone).

critere(Vin,val_de_loire):-
  region(Vin,val_de_loire).

critere(Vin,cognac) :-
  region(Vin,cognac).

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


/*

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
appellation(ch_la_fleur_baudron, 'bordeaux Superieur').
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
  ['a', 'l','\'','arriere', 'de', 'lussac', 'saint', 'Emilion'],
  ['Reposant', 'sur', 'des', 'sols', 'gravelleux', 'et', 'argilo', 'calcaires'],
  ['un', 'bordeaux', 'tres', 'complet']
  ]).
*/
% ---------------------------------------- Extraction ChatGPT ----------------------------------------
% ------------------------------ Bordeaux -------------------------
% Ch. Moulin de Mallet
nom(ch_moulin_de_mallet, 'ch. moulin de mallet').
region(ch_moulin_de_mallet, 'bordeaux').
appellation(ch_moulin_de_mallet, 'bordeaux').
couleur(ch_moulin_de_mallet, 'rouge').
annee(ch_moulin_de_mallet, 2014).
prix(ch_moulin_de_mallet, 6.85).
robe(ch_moulin_de_mallet, [
    ['jolie', 'robe', 'grenat', 'aux', 'reflets', 'rubis', '.']
]).
nez(ch_moulin_de_mallet, [
    ['nez', 'tendrement', 'parfume', 'de', 'fruits', 'rouges'],
    ['(', 'cerises', ',', 'mures', ')']
]).
bouche(ch_moulin_de_mallet, [
    ['un', 'bel', 'eventail', 'aromatique', 'et', 'des'],
    ['tannins', 'fins', '.']
]).
description(ch_moulin_de_mallet, [
    ['un', 'joli', 'vin', ',', 'classique', 'polyvalent', ','],
    ['avec', 'un', 'bel', 'equilibre', 'de', 'l\'', 'ensemble', ','],
    ['et', 'un', 'boise', 'bien', 'integre', '.', '(', '2017', '-', '2020', ')']
]).

% Ch. La Fleur Baudron
nom(ch_la_fleur_baudron, 'ch. la fleur baudron').
region(ch_la_fleur_baudron, 'bordeaux').
appellation(ch_la_fleur_baudron, 'bordeaux superieur').
couleur(ch_la_fleur_baudron, 'rouge').
annee(ch_la_fleur_baudron, 2014).
prix(ch_la_fleur_baudron, 7.48).
robe(ch_la_fleur_baudron, [
    ['robe', 'soutenue', '.']
]).
nez(ch_la_fleur_baudron, [
    ['le', 'nez', 'presente', 'des', 'aromes', 'de', 'fruits'],
    ['compotes', 'et', 'd\'', 'epices', 'fines', 'associes', 'a'],
    ['une', 'nuance', 'florale', '(', 'violette', ')', '.']
]).
bouche(ch_la_fleur_baudron, [
    ['bouche', 'tres', 'plaisante', ',', 'riche', ',', 'et', 'de'],
    ['beaux', 'tannins', 'associes', 'a', 'un', 'boise', 'bien'],
    ['integre', '.', 'du', 'velours', '.']
]).
description(ch_la_fleur_baudron, [
    ['un', 'bordeaux', 'tres', 'complet', '(', '2017', '-', '2021', ')']
]).

% Ch. Bois Vert Cuvée Elégance
nom(ch_bois_vert_cuvee_elegance, 'ch. bois vert cuvee elegance').
region(ch_bois_vert_cuvee_elegance, 'bordeaux').
appellation(ch_bois_vert_cuvee_elegance, 'cotes de bordeaux-blaye').
couleur(ch_bois_vert_cuvee_elegance, 'rouge').
annee(ch_bois_vert_cuvee_elegance, 2014).
prix(ch_bois_vert_cuvee_elegance, 8.11).
robe(ch_bois_vert_cuvee_elegance, [
    ['non', 'mentionnee']
]).
nez(ch_bois_vert_cuvee_elegance, [
    ['une', 'jolie', 'note', 'boisee', 's\'', 'integre', 'avec'],
    ['elegance', 'aux', 'aromes', 'dominants', 'de', 'violette'],
    ['et', 'de', 'cassis', ',', 'associes', 'a', 'une', 'nuance'],
    ['empyreumatique', '.']
]).
bouche(ch_bois_vert_cuvee_elegance, [
    ['en', 'bouche', ',', 'les', 'saveurs', 'sont', 'genereuses', ','],
    ['tres', 'plaisantes', 'avec', 'cette', 'rondeur'],
    ['caracteristique', 'du', 'merlot', '.']
]).
description(ch_bois_vert_cuvee_elegance, [
    ['on', 'garde', 'le', 'souvenir', 'd\'', 'un', 'vin', 'veloute'],
    ['et', 'harmonieux', '(', '2017', '-', '2021', ')']
]).

% Ch. Paret
nom(ch_paret, 'ch. paret').
region(ch_paret, 'bordeaux').
appellation(ch_paret, 'cotes de bordeaux-castillon').
couleur(ch_paret, 'rouge').
annee(ch_paret, 2012).
prix(ch_paret, 8.68).
robe(ch_paret, [
    ['non', 'mentionnee']
]).
nez(ch_paret, [
    ['le', 'nez', ',', 'profond', ',', 'annonce', 'un', 'vin'],
    ['riche', ',', 'concentre', '.']
]).
bouche(ch_paret, [
    ['alliant', 'matiere', 'et', 'densite', ',', 'avec', 'une'],
    ['grande', 'maturite', '.', 'belles', 'notes', 'de', 'fruits'],
    ['noirs', ',', 'de', 'chocolat', 'et', 'une', 'touche', 'de'],
    ['sous-bois', '.']
]).
description(ch_paret, [
    ['beau', 'caractere', ',', 'et', 'laisse', 'le', 'souvenir'],
    ['d\'', 'un', 'vin', 'tres', 'complet', '(', '2017', '-', '2020', ')']
]).

% Ch. Ménota Cuvée Montgarède
nom(ch_menota_cuvee_montgarede, 'ch. menota cuvee montgarede').
region(ch_menota_cuvee_montgarede, 'bordeaux').
appellation(ch_menota_cuvee_montgarede, 'graves').
couleur(ch_menota_cuvee_montgarede, 'rouge').
annee(ch_menota_cuvee_montgarede, 2014).
prix(ch_menota_cuvee_montgarede, 9.46).
robe(ch_menota_cuvee_montgarede, [
    ['tres', 'jolie', 'robe', 'grenat', 'profond', '.']
]).
nez(ch_menota_cuvee_montgarede, [
    ['nez', 'de', 'fruits', 'noirs', 'et', 'd\'', 'epices'],
    ['associees', 'a', 'des', 'nuances', 'empyreumatiques', '.']
]).
bouche(ch_menota_cuvee_montgarede, [
    ['la', 'texture', 'est', 'ronde', 'et', 'veloutee', 'aux'],
    ['tannins', 'soyeux', '.', 'l\'', 'ensemble', 'est', 'dense', ','],
    ['d\'', 'un', 'remarquable', 'equilibre', '.', 'finale'],
    ['cacaotee', 'aux', 'saveurs', 'genereuses', '.']
]).
description(ch_menota_cuvee_montgarede, [
    ['delicieux', 'graves', ',', 'plein', 'd\'', 'etoffe', '!', '(', '2017', '-', '2023', ')']
]).

% Ch. Les Polyanthas
nom(ch_les_polyanthas, 'ch. les polyanthas').
region(ch_les_polyanthas, 'bordeaux').
appellation(ch_les_polyanthas, 'saint-emilion').
couleur(ch_les_polyanthas, 'rouge').
annee(ch_les_polyanthas, 2010).
prix(ch_les_polyanthas, 15.06).
robe(ch_les_polyanthas, [
    ['non', 'mentionnee']
]).
nez(ch_les_polyanthas, [
    ['aromes', 'fruites', 'et', 'epices', '.']
]).
bouche(ch_les_polyanthas, [
    ['style', 'onctueux', ',', 'rond', 'et', 'soyeux', ','],
    ['remarquable', 'profondeur', '.', 'saveurs', 'truffees', ','],
    ['note', 'chocolatee', 'en', 'finale', '.']
]).
description(ch_les_polyanthas, [
    ['saint-emilion', 'de', 'grande', 'classe', ',', 'opulent', '.'],
    ['(', '2017', '-', '2020', ')']
]).

% Ch. La Menotte
nom(ch_la_menotte, 'ch. la menotte').
region(ch_la_menotte, 'bordeaux').
appellation(ch_la_menotte, 'lalande-de-pomerol').
couleur(ch_la_menotte, 'rouge').
annee(ch_la_menotte, 2012).
prix(ch_la_menotte, 15.71).
robe(ch_la_menotte, [
    ['profonde', ',', 'rouge', 'velours', '.']
]).
nez(ch_la_menotte, [
    ['bouquet', 'intense', ',', 'fruits', 'et', 'fleurs'],
    ['associes', 'a', 'des', 'nuances', 'truffees', ',', 'grain'],
    ['de', 'cafe', 'et', 'violette', '.']
]).
bouche(ch_la_menotte, [
    ['texture', 'veloutee', ',', 'racee', ',', 'd\'', 'une', 'grande'],
    ['etoffe', '.', 'tres', 'present', ',', 'avec', 'charme', 'et'],
    ['harmonie', '.']
]).
description(ch_la_menotte, [
    ['magnifique', 'temoin', 'de', 'l\'', 'appellation', '.'],
    ['(', '2017', '-', '2023', ')']
]).

% La Fleur de Pomys
nom(la_fleur_de_pomys, 'la fleur de pomys').
region(la_fleur_de_pomys, 'bordeaux').
appellation(la_fleur_de_pomys, 'saint-estephe').
couleur(la_fleur_de_pomys, 'rouge').
annee(la_fleur_de_pomys, 2012).
prix(la_fleur_de_pomys, 21.36).
robe(la_fleur_de_pomys, [
    ['robe', 'profonde', '.']
]).
nez(la_fleur_de_pomys, [
    ['empyreumatique', ',', 'complexe', 'et', 'concentre', '.'],
    ['aromes', 'de', 'myrtille', ',', 'cassis', 'et', 'notes'],
    ['florales', ',', 'boise', 'bien', 'integre', '.']
]).
bouche(la_fleur_de_pomys, [
    ['saveurs', 'riches', 'et', 'concentrees', ',', 'avec'],
    ['beaucoup', 'de', 'densite', '.']
]).
description(la_fleur_de_pomys, [
    ['saint-estephe', 'complet', ',', 'dense', 'et', 'race', '.'],
    ['(', '2017', '-', '2024', ')']
]).

% Florilège Pauillac
nom(florilege_pauillac, 'florilege pauillac').
region(florilege_pauillac, 'bordeaux').
appellation(florilege_pauillac, 'pauillac').
couleur(florilege_pauillac, 'rouge').
annee(florilege_pauillac, 2011).
prix(florilege_pauillac, 30.65).
robe(florilege_pauillac, [
    ['robe', 'velours', '.']
]).
nez(florilege_pauillac, [
    ['concentre', ',', 'sur', 'les', 'fruits', 'noirs', ','],
    ['touche', 'bois', 'de', 'cedre', 'et', 'note', 'reglisse', '.']
]).
bouche(florilege_pauillac, [
    ['puissante', ',', 'tannins', 'elegants', 'et', 'bien'],
    ['enrobes', '.', 'grande', 'profondeur', '.']
]).
description(florilege_pauillac, [
    ['cru', 'structure', ',', 'aimable', ',', 'd\'', 'une'],
    ['remarquable', 'distinction', '.', 'ideal', 'pour', 'le'],
    ['gibier', '.', '(', '2017', '-', '2024', ')']
]).

% ------------------------------ Champagnes -------------------------
% Champagne Brut Selection
nom(champagne_brut_selection, 'Champagne Brut Selection').
region(champagne_brut_selection, 'champagne').
appellation(champagne_brut_selection, 'champagne').
couleur(champagne_brut_selection, 'blanc').
annee(champagne_brut_selection, 'nv').
prix(champagne_brut_selection, 25.86).
robe(champagne_brut_selection, [
    ['bulles', 'fines', 'et', 'persistantes', '.']
]).
nez(champagne_brut_selection, [
    ['nez', 'frais', ',', 'fruite', '(', 'poire', ',', 'pomme', ')'],
    ['et', 'floral', '.']
]).
bouche(champagne_brut_selection, [
    ['belle', 'vivacite', ',', 'equilibre', 'et', 'finesse', '.']
]).
description(champagne_brut_selection, [
    ['un', 'champagne', 'frais', 'et', 'elegant', ',', 'ideal'],
    ['pour', 'l\'', 'aperitif', '.']
]).

% Champagne Brut Blanc de Blancs
nom(champagne_brut_blanc_de_blancs, 'Champagne Brut Blanc de Blancs').
region(champagne_brut_blanc_de_blancs, 'champagne').
appellation(champagne_brut_blanc_de_blancs, 'champagne').
couleur(champagne_brut_blanc_de_blancs, 'blanc').
annee(champagne_brut_blanc_de_blancs, 'nv').
prix(champagne_brut_blanc_de_blancs, 29.22).
robe(champagne_brut_blanc_de_blancs, [
    ['robe', 'claire', 'aux', 'reflets', 'argentes', '.']
]).
nez(champagne_brut_blanc_de_blancs, [
    ['nez', 'elegant', 'de', 'fleurs', 'blanches', 'et', 'd\''],
    ['agrumes', '.']
]).
bouche(champagne_brut_blanc_de_blancs, [
    ['bouche', 'vive', ',', 'pure', ',', 'avec', 'une', 'belle'],
    ['mineralite', '.']
]).
description(champagne_brut_blanc_de_blancs, [
    ['100%', 'chardonnay', ',', 'un', 'vin', 'd\'', 'une', 'grande'],
    ['distinction', '.']
]).

% Champagne Brut Rose
nom(champagne_brut_rose, 'Champagne Brut Rose').
region(champagne_brut_rose, 'champagne').
appellation(champagne_brut_rose, 'champagne').
couleur(champagne_brut_rose, 'rose').
annee(champagne_brut_rose, 'nv').
prix(champagne_brut_rose, 28.54).
robe(champagne_brut_rose, [
    ['jolie', 'robe', 'saumonée', '.']
]).
nez(champagne_brut_rose, [
    ['aromes', 'de', 'petits', 'fruits', 'rouges', '(', 'fraise'],
    [',', 'framboise', ')', '.']
]).
bouche(champagne_brut_rose, [
    ['bouche', 'gourmande', ',', 'ronde', 'et', 'fraiche', '.']
]).
description(champagne_brut_rose, [
    ['un', 'champagne de', 'plaisir', ',', 'tout', 'en'],
    ['souplesse', '.']
]).

% Champagne Brut Prestige
nom(champagne_brut_prestige, 'Champagne Brut Prestige').
region(champagne_brut_prestige, 'champagne').
appellation(champagne_brut_prestige, 'champagne').
couleur(champagne_brut_prestige, 'blanc').
annee(champagne_brut_prestige, 'nv').
prix(champagne_brut_prestige, 29.22).
robe(champagne_brut_prestige, [
    ['non', 'mentionnee']
]).
nez(champagne_brut_prestige, [
    ['nez', 'tres', 'complexe', ',', 'puissant', ',', 'bien'],
    ['evolue', '.']
]).
bouche(champagne_brut_prestige, [
    ['bouche', 'melant', 'aromes', 'de', 'fruits', 'secs', 'et'],
    ['note', 'miellee', '.']
]).
description(champagne_brut_prestige, [
    ['cuvee', '100%', 'grand', 'cru', 'bouzy', 'remarquable'],
    ['pour', 'sa', 'finesse', 'et', 'sa', 'puissance', '.']
]).

% ------------------------------ Cognacs -------------------------
% Cognac Trois Etoiles
nom(cognac_trois_etoiles, 'Cognac Trois Etoiles').
region(cognac_trois_etoiles, 'cognac').
appellation(cognac_trois_etoiles, 'petite champagne, fin bois et bon bois').
couleur(cognac_trois_etoiles, 'ambre').
annee(cognac_trois_etoiles, 'nv').
prix(cognac_trois_etoiles, 20.87).
robe(cognac_trois_etoiles, [
    ['non', 'mentionnee']
]).
nez(cognac_trois_etoiles, [
    ['notes', 'd\'', 'epices', 'et', 'd\'', 'ecorce', 'd\'', 'orange', '.']
]).
bouche(cognac_trois_etoiles, [
    ['le', 'style', 'est', 'soyeux', ',', 'avec', 'un', 'tres', 'beau'],
    ['fruit', '.']
]).
description(cognac_trois_etoiles, [
    ['qualite', 'mettant', 'en', 'valeur', 'les', 'terroirs', 'de'],
    ['cognac', 'des', 'secteurs', 'de', 'petite', 'champagne', ','],
    ['fin', 'bois', 'et', 'bon', 'bois', '.']
]).

% Cognac Fine Champagne VSOP
nom(cognac_fine_champagne_vsop, 'Cognac Fine Champagne VSOP').
region(cognac_fine_champagne_vsop, 'cognac').
appellation(cognac_fine_champagne_vsop, 'grande et petite champagne').
couleur(cognac_fine_champagne_vsop, 'ambre').
annee(cognac_fine_champagne_vsop, 'nv').
prix(cognac_fine_champagne_vsop, 22.26).
robe(cognac_fine_champagne_vsop, [
    ['non', 'mentionnee']
]).
nez(cognac_fine_champagne_vsop, [
    ['nez', 'alliant', 'puissance', 'et', 'finesse', '.']
]).
bouche(cognac_fine_champagne_vsop, [
    ['beaucoup', 'd\'', 'allure', 'en', 'bouche', '.']
]).
description(cognac_fine_champagne_vsop, [
    ['la', 'fine', 'champagne', 'est', 'la', 'mention', 'resultant'],
    ['de', 'l\'', 'assemblage', 'des', 'deux', 'aires', 'd\''],
    ['appellation', 'grande', 'champagne', 'et', 'petite'],
    ['champagne', '.']
]).

% Cognac Grande Champagne Hors d'Age
nom(cognac_grande_champagne_hors_d_age, 'Cognac Grande Champagne Hors d\'Age').
region(cognac_grande_champagne_hors_d_age, 'cognac').
appellation(cognac_grande_champagne_hors_d_age, 'grande champagne').
couleur(cognac_grande_champagne_hors_d_age, 'ambre').
annee(cognac_grande_champagne_hors_d_age, 'nv').
prix(cognac_grande_champagne_hors_d_age, 32.28).
robe(cognac_grande_champagne_hors_d_age, [
    ['non', 'mentionnee']
]).
nez(cognac_grande_champagne_hors_d_age, [
    ['aromes', 'de', 'rancio', ',', 'de', 'fruits', 'confits', 'et'],
    ['de', 'boite', 'a', 'cigares', '.']
]).
bouche(cognac_grande_champagne_hors_d_age, [
    ['exceptionnelle', 'longueur', 'en', 'bouche', ',', 'gras', 'et'],
    ['onctuosite', '.']
]).
description(cognac_grande_champagne_hors_d_age, [
    ['issue', 'de', 'la', 'meilleure', 'aire', 'de', 'l\''],
    ['appellation', ',', 'un', 'cognac', 'd\'', 'exception', '.']
]).

