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
% Couleur
critere(Vin,rouge):-
  couleur(Vin,rouge).

critere(Vin,blanc):-
  couleur(Vin,blanc).

critere(Vin,rose):-
  couleur(Vin,rose).

critere(Vin,ambre):-
  couleur(Vin,ambre).
% Region
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

critere(Vin,champagne):-
  region(Vin,champagne).

critere(Vin,cognac) :-
  region(Vin,cognac).

% Appellation
critere(Vin,pinotnoir):-
  appellation(Vin,pinotnoir).

% Accord
critere(Vin,viande):-
  accord(Vin,viande).

critere(Vin,gibier):-
  accord(Vin,gibier).

critere(Vin,volaille):-
  accord(Vin,volaille).

critere(Vin,poisson):-
  accord(Vin,poisson).



% ---------------------------------------- Extraction Gemini (v.3) ----------------------------------------
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
accord(ch_moulin_de_mallet, viande).

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
accord(ch_la_fleur_baudron, viande).
accord(ch_la_fleur_baudron, volaille).

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
accord(ch_bois_vert_cuvee_elegance, viande).

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
accord(ch_paret, viande).

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
accord(ch_menota_cuvee_montgarede, viande).

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
accord(ch_les_polyanthas, viande).

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
accord(ch_la_menotte, viande).

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
accord(la_fleur_de_pomys, viande).
accord(la_fleur_de_pomys, gibier).

% Florilege Pauillac
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
accord(florilege_pauillac,gibier).
accord(florilege_pauillac, viande).

% Florilege Saint-Julien
nom(florilege_saint_julien, 'Florilege Saint-Julien').
region(florilege_saint_julien, 'bordeaux').
appellation(florilege_saint_julien, 'saint-julien').
couleur(florilege_saint_julien, 'rouge').
annee(florilege_saint_julien, 2011).
prix(florilege_saint_julien, 31.95).
robe(florilege_saint_julien, [
    ['robe', 'sombre', 'aux', 'reflets', 'mauves', '.']
]).
nez(florilege_saint_julien, [
    ['nez', 'de', 'fruits', 'rouges', 'tres', 'murs', ','],
    ['nuances', 'de', 'cuir', 'et', 'de', 'fumee', '.']
]).
bouche(florilege_saint_julien, [
    ['bouche', 'pleine', ',', 'onctueuse', 'et', 'veloutee', ','],
    ['avec', 'des', 'tannins', 'fondus', 'et', 'une', 'grande'],
    ['persistance', '.']
]).
description(florilege_saint_julien, [
    ['un', 'vin', 'noble', ',', 'equilibre', 'et', 'race', '.'],
    ['(', '2017', '-', '2024', ')']
]).
accord(florilege_saint_julien, viande).
accord(florilege_saint_julien, gibier).

% Florilege Pomerol
nom(florilege_pomerol, 'Florilege Pomerol').
region(florilege_pomerol, 'bordeaux').
appellation(florilege_pomerol, 'pomerol').
couleur(florilege_pomerol, 'rouge').
annee(florilege_pomerol, 2012).
prix(florilege_pomerol, 31.95).
robe(florilege_pomerol, [
    ['robe', 'velours', 'pourpre', '.']
]).
nez(florilege_pomerol, [
    ['nez', 'de', 'fruits', 'noirs', ',', 'notes', 'de'],
    ['truffe', 'et', 'de', 'violette', '.']
]).
bouche(florilege_pomerol, [
    ['belle', 'ampleur', 'en', 'bouche', ',', 'texture'],
    ['soyeuse', ',', 'beaucoup', 'd\'', 'elegance', '.']
]).
description(florilege_pomerol, [
    ['un', 'vin', 'onctueux', 'et', 'raffine', ',', 'fidele'],
    ['a', 'son', 'appellation', '.', '(', '2017', '-', '2023', ')']
]).
accord(florilege_pomerol, viande).
accord(florilege_pomerol, volaille).

% ------------------------------ Cotes du Rhone et du Languedoc -----
% Syrah-Vin de Pays d'Oc
nom(syrah_vin_de_pays_d_oc, 'syrah-vin de pays d\'oc').
region(syrah_vin_de_pays_d_oc, 'languedoc').
appellation(syrah_vin_de_pays_d_oc, 'vin de pays d\'oc').
couleur(syrah_vin_de_pays_d_oc, 'rouge').
annee(syrah_vin_de_pays_d_oc, 2015).
prix(syrah_vin_de_pays_d_oc, 5.14).
robe(syrah_vin_de_pays_d_oc, [['belle', 'robe', 'rouge', 'profond', '.']]).
nez(syrah_vin_de_pays_d_oc, [
    ['nez', 'expressif', 'melant', 'les', 'fruits', 'rouges', ','],
    ['les', 'agrumes', 'a', 'de', 'jolies', 'notes', 'd\'', 'epices', '.']
]).
bouche(syrah_vin_de_pays_d_oc, [
    ['beau', 'caractere', ',', 'saveurs', 'enrobees', 'de'],
    ['fruits', 'rouges', 'associees', 'a', 'des', 'nuances', 'de'],
    ['reglisse', '.']
]).
description(syrah_vin_de_pays_d_oc, [
    ['elevage', 'sous', 'bois', 'de', '12', 'mois', ','],
    ['tannins', 'fondus', ',', 'vin', 'tres', 'harmonieux', '.'],
    ['(', '2017', '-', '2019', ')']
]).
accord(syrah_vin_de_pays_d_oc, viande).

% Côtes du Rhône Villages
nom(cotes_du_rhone_villages, 'cotes du rhone villages').
region(cotes_du_rhone_villages, 'vallee du rhone').
appellation(cotes_du_rhone_villages, 'cotes du rhone villages').
couleur(cotes_du_rhone_villages, 'rouge').
annee(cotes_du_rhone_villages, 2014).
prix(cotes_du_rhone_villages, 7.32).
robe(cotes_du_rhone_villages, [['robe', 'pourpre', 'soutenue', '.']]).
nez(cotes_du_rhone_villages, [['nez', 'intense', 'de', 'fruits', 'rouges', 'murs', '.']]).
bouche(cotes_du_rhone_villages, [['bouche', 'charnue', ',', 'ronde', 'et', 'epicee', '.']]).
description(cotes_du_rhone_villages, [['un', 'vin', 'genereux', 'et', 'ensoleille', '.', '(', '2017', '-', '2020', ')']]).
accord(cotes_du_rhone_villages, viande).

% Tautavel-Côtes du Roussillon Villages
nom(tautavel_cotes_du_roussillon_villages, 'tautavel-cotes du roussillon villages').
region(tautavel_cotes_du_roussillon_villages, 'languedoc-roussillon').
appellation(tautavel_cotes_du_roussillon_villages, 'cotes du roussillon villages').
couleur(tautavel_cotes_du_roussillon_villages, 'rouge').
annee(tautavel_cotes_du_roussillon_villages, 2014).
prix(tautavel_cotes_du_roussillon_villages, 7.37).
robe(tautavel_cotes_du_roussillon_villages, [['robe', 'noire', '.']]).
nez(tautavel_cotes_du_roussillon_villages, [
    ['bouquet', 'intense', 'de', 'fruits', 'noirs', '(', 'noyau', ')'],
    ['et', 'd\'', 'epices', 'associes', 'a', 'des', 'notes', 'de'],
    ['chocolat', 'et', 'de', 'garrigue', '.']
]).
bouche(tautavel_cotes_du_roussillon_villages, [
    ['saveurs', 'de', 'fruits', 'frais', 'et', 'd\'', 'epices', '.'],
    ['remarquablement', 'concentree', '.', 'finale', 'cacao', '.']
]).
description(tautavel_cotes_du_roussillon_villages, [
    ['dense', ',', 'puissante', ',', 'juteuse', 'et'],
    ['harmonieuse', '.', '(', '2017', '-', '2019', ')']
]).
accord(tautavel_cotes_du_roussillon_villages, viande).
accord(tautavel_cotes_du_roussillon_villages, gibier).

% Lirac
nom(lirac, 'lirac').
region(lirac, 'vallee du rhone').
appellation(lirac, 'lirac').
couleur(lirac, 'rouge').
annee(lirac, 2015).
prix(lirac, 9.23).
robe(lirac, [['grenat', 'profond', '.']]).
nez(lirac, [
    ['parfume', ',', 'domine', 'par', 'les', 'fruits', 'a'],
    ['noyaux', 'et', 'les', 'epices', '(', 'cannelle', ',', 'reglisse', ')', '.']
]).
bouche(lirac, [
    ['dense', 'et', 'minerale', ',', 'saveurs', 'fruitees'],
    ['et', 'epicees', '(', 'aiguilles', 'de', 'pin', ',', 'eucalyptus', ')', '.']
]).
description(lirac, [['grande', 'annee', ',', 'laisse', 'un', 'tres', 'agreable', 'souvenir', '.']]).
accord(lirac, viande).

% Cairanne
nom(cairanne, 'cairanne').
region(cairanne, 'vallee du rhone').
appellation(cairanne, 'cairanne').
couleur(cairanne, 'rouge').
annee(cairanne, 2014).
prix(cairanne, 10.10).
robe(cairanne, [['belle', 'robe', 'rubis', '.']]).
nez(cairanne, [['aromes', 'de', 'petits', 'fruits', 'noirs', 'et', 'de', 'poivre', '.']]).
bouche(cairanne, [['belle', 'structure', 'avec', 'des', 'tannins', 'fins', '.']]).
description(cairanne, [['un', 'vin', 'equilibre', 'et', 'plein', 'de', 'finesse', '.', '(', '2017', '-', '2021', ')']]).
accord(cairanne, viande).
accord(cairanne, gibier).

% Beaumes de Venise
nom(beaumes_de_venise, 'beaumes de venise').
region(beaumes_de_venise, 'vallee du rhone').
appellation(beaumes_de_venise, 'beaumes de venise').
couleur(beaumes_de_venise, 'rouge').
annee(beaumes_de_venise, 2015).
prix(beaumes_de_venise, 10.65).
robe(beaumes_de_venise, [['robe', 'cerise', 'brillante', '.']]).
nez(beaumes_de_venise, [['nez', 'fruite', 'et', 'floral', '(', 'pivoine', ',', 'violette', ')', '.']]).
bouche(beaumes_de_venise, [['bouche', 'ronde', ',', 'souple', 'et', 'gourmande', '.']]).
description(beaumes_de_venise, [['un', 'vin de', 'plaisir', ',', 'frais', 'et', 'harmonieux', '.', '(', '2017', '-', '2020', ')']]).
accord(beaumes_de_venise, viande).

% Vacqueyras
nom(vacqueyras, 'vacqueyras').
region(vacqueyras, 'vallee du rhone').
appellation(vacqueyras, 'vacqueyras').
couleur(vacqueyras, 'rouge').
annee(vacqueyras, 2014).
prix(vacqueyras, 11.45).
robe(vacqueyras, [['belle', 'robe', 'grenat', '.']]).
nez(vacqueyras, [['nez', 'fin', ',', 'aromes', 'de', 'fruits', 'noirs', 'et', 'notes', 'de', 'poivre', '.']]).
bouche(vacqueyras, [['bouche', 'equilibree', ',', 'ample', 'et', 'genereuse', '.']]).
description(vacqueyras, [['un', 'vin', 'chaleureux', 'et', 'raffine', '.', '(', '2017', '-', '2021', ')']]).
accord(vacqueyras, viande).
accord(vacqueyras, gibier).

% Saint-Joseph
nom(saint_joseph, 'saint-joseph').
region(saint_joseph, 'vallee du rhone').
appellation(saint_joseph, 'saint-joseph').
couleur(saint_joseph, 'rouge').
annee(saint_joseph, 2014).
prix(saint_joseph, 14.16).
robe(saint_joseph, [['robe', 'pourpre', 'sombre', '.']]).
nez(saint_joseph, [['nez', 'complexe', 'de', 'fruits', 'noirs', 'et', 'de', 'fleurs', 'blanches', '.']]).
bouche(saint_joseph, [['bouche', 'elevee', ',', 'racee', 'aux', 'tannins', 'veloutes', '.']]).
description(saint_joseph, [['un', 'grand', 'vin', 'du', 'rhone', 'septentrional', '.', '(', '2017', '-', '2022', ')']]).
accord(saint_joseph, viande).
accord(saint_joseph, volaille).

% Gigondas
nom(gigondas, 'gigondas').
region(gigondas, 'vallee du rhone').
appellation(gigondas, 'gigondas').
couleur(gigondas, 'rouge').
annee(gigondas, 2014).
prix(gigondas, 14.62).
robe(gigondas, [['robe', 'pourpre', 'soutenue', '.']]).
nez(gigondas, [['aromes', 'intenses', 'de', 'fruits', 'rouges', 'murs', 'et', 'sous-bois', '.']]).
bouche(gigondas, [['bouche', 'puissante', ',', 'charpentee', 'avec', 'une', 'belle', 'matiere', '.']]).
description(gigondas, [['un', 'grand', 'classique', 'de', 'la', 'vallee', 'du', 'rhone', '.', '(', '2017', '-', '2023', ')']]).
accord(gigondas, viande).
accord(gigondas, gibier).

% Châteauneuf-du-Pape Rouge
nom(chateauneuf_du_pape_rouge, 'chateauneuf-du-pape rouge').
region(chateauneuf_du_pape_rouge, 'vallee du rhone').
appellation(chateauneuf_du_pape_rouge, 'chateauneuf-du-pape').
couleur(chateauneuf_du_pape_rouge, 'rouge').
annee(chateauneuf_du_pape_rouge, 2013).
prix(chateauneuf_du_pape_rouge, 22.15).
robe(chateauneuf_du_pape_rouge, [['robe', 'rubis', 'profond', '.']]).
nez(chateauneuf_du_pape_rouge, [['nez', 'complexe', 'alliant', 'fruits', 'noirs', ',', 'epices', 'et', 'cuir', '.']]).
bouche(chateauneuf_du_pape_rouge, [['bouche', 'puissante', ',', 'genereuse', 'et', 'onctueuse', '.']]).
description(chateauneuf_du_pape_rouge, [['un', 'vin', 'd\'', 'une', 'grande', 'complexite', '.', '(', '2017', '-', '2025', ')']]).
accord(chateauneuf_du_pape_rouge, viande).
accord(chateauneuf_du_pape_rouge, gibier).

% Hermitage rouge
nom(hermitage_rouge, 'hermitage rouge').
region(hermitage_rouge, 'vallee du rhone').
appellation(hermitage_rouge, 'hermitage').
couleur(hermitage_rouge, 'rouge').
annee(hermitage_rouge, 2007).
prix(hermitage_rouge, 46.10).
robe(hermitage_rouge, [['robe', 'sombre', 'aux', 'reflets', 'tuiles', '.']]).
nez(hermitage_rouge, [['bouquet', 'evolue', 'de', 'fruits', 'confits', ',', 'tabac', 'et', 'sous-bois', '.']]).
bouche(hermitage_rouge, [['bouche', 'noble', ',', 'ample', 'avec', 'une', 'finale', 'persistante', '.']]).
description(hermitage_rouge, [['un', 'vin', 'd\'', 'exception', 'a', 'maturite', '.', '(', '2017', '-', '2021', ')']]).
accord(hermitage_rouge, viande).
accord(hermitage_rouge, gibier).

% Aloxe-Corton
nom(aloxe_corton, 'aloxe-corton').
region(aloxe_corton, 'bourgogne').
appellation(aloxe_corton, 'aloxe-corton').
couleur(aloxe_corton, 'rouge').
annee(aloxe_corton, 2014).
prix(aloxe_corton, 25.10).
robe(aloxe_corton, [['robe', 'rubis', 'intense', '.']]).
nez(aloxe_corton, [['nez', 'de', 'petits', 'fruits', 'noirs', 'et', 'de', 'reglisse', '.']]).
bouche(aloxe_corton, [['bouche', 'puissante', ',', 'structuree', 'et', 'bien', 'equilibrée', '.']]).
description(aloxe_corton, [['un', 'bourgogne', 'de', 'caractere', '.', '(', '2017', '-', '2024', ')']]).
accord(aloxe_corton, viande).
accord(aloxe_corton, gibier).

% Nuits-Saint-Georges 1er Cru
nom(nuits_saint_georges_1er_cru, 'nuits-saint-georges 1er cru').
region(nuits_saint_georges_1er_cru, 'bourgogne').
appellation(nuits_saint_georges_1er_cru, 'nuits-saint-georges 1er cru').
couleur(nuits_saint_georges_1er_cru, 'rouge').
annee(nuits_saint_georges_1er_cru, 2013).
prix(nuits_saint_georges_1er_cru, 40.52).
robe(nuits_saint_georges_1er_cru, [['robe', 'grenat', 'profonde', '.']]).
nez(nuits_saint_georges_1er_cru, [['nez', 'raffine', 'de', 'fruits', 'rouges', 'et', 'notes', 'sauvages', '.']]).
bouche(nuits_saint_georges_1er_cru, [['bouche', 'racee', ',', 'dense', 'avec', 'une', 'grande', 'finesse', '.']]).
description(nuits_saint_georges_1er_cru, [['un', 'grand', 'vin', 'de', 'la', 'cote', 'de', 'nuits', '.', '(', '2017', '-', '2026', ')']]).
accord(nuits_saint_georges_1er_cru, viande).
accord(nuits_saint_georges_1er_cru, gibier).

% Chambolle-Musigny
nom(chambolle_musigny, 'chambolle-musigny').
region(chambolle_musigny, 'bourgogne').
appellation(chambolle_musigny, 'chambolle-musigny').
couleur(chambolle_musigny, 'rouge').
annee(chambolle_musigny, 2014).
prix(chambolle_musigny, 33.42).
robe(chambolle_musigny, [['robe', 'rubis', 'claire', '.']]).
nez(chambolle_musigny, [['nez', 'floral', 'et', 'fruite', '(', 'framboise', ',', 'violette', ')', '.']]).
bouche(chambolle_musigny, [['bouche', 'elegante', ',', 'soyeuse', 'et', 'tres', 'feminine', '.']]).
description(chambolle_musigny, [['la', 'dentelle', 'de', 'la', 'bourgogne', '.', '(', '2017', '-', '2024', ')']]).
accord(chambolle_musigny, viande).
accord(chambolle_musigny, volaille).

% ------------------------------ Beaujolais -------------------------
% Chiroubles
nom(chiroubles, 'chiroubles').
region(chiroubles, 'beaujolais').
appellation(chiroubles, 'chiroubles').
couleur(chiroubles, 'rouge').
annee(chiroubles, 2014).
prix(chiroubles, 9.78).
robe(chiroubles, [['robe', 'legere', 'et', 'brillante', '.']]).
nez(chiroubles, [['nez', 'tres', 'fin', 'aux', 'notes', 'de', 'violette', 'et', 'muguet', '.']]).
bouche(chiroubles, [['bouche', 'tendre', ',', 'elegante', 'et', 'pleine', 'de', 'finesse', '.']]).
description(chiroubles, [['le', 'plus', 'bourguignon', 'des', 'beaujolais', '.', '(', '2017', '-', '2019', ')']]).
accord(chiroubles, viande).
accord(chiroubles, volaille).

% Fleurie
nom(fleurie, 'fleurie').
region(fleurie, 'beaujolais').
appellation(fleurie, 'fleurie').
couleur(fleurie, 'rouge').
annee(fleurie, 2015).
prix(fleurie, 11.95).
robe(fleurie, [['robe', 'carmin', 'intense', '.']]).
nez(fleurie, [['nez', 'floral', 'et', 'fruite', '(', 'iris', ',', 'violette', ',', 'fruits', 'rouges', ')', '.']]).
bouche(fleurie, [['bouche', 'raffinée', ',', 'souple', 'et', 'veloutee', '.']]).
description(fleurie, [['un', 'vin', 'élégant', 'et', 'plein', 'de', 'charme', '.', '(', '2017', '-', '2021', ')']]).
accord(fleurie, volaille).

% Moulin-a-Vent
nom(moulin_a_vent, 'moulin-a-vent').
region(moulin_a_vent, 'beaujolais').
appellation(moulin_a_vent, 'moulin-a-vent').
couleur(moulin_a_vent, 'rouge').
annee(moulin_a_vent, 2014).
prix(moulin_a_vent, 12.85).
robe(moulin_a_vent, [['robe', 'grenat', 'sombre', '.']]).
nez(moulin_a_vent, [['aromes', 'de', 'fruits', 'noirs', 'et', 'notes', 'epicees', '.']]).
bouche(moulin_a_vent, [['bouche', 'charpentee', ',', 'puissante', 'et', 'complexe', '.']]).
description(moulin_a_vent, [['le', 'seigneur', 'des', 'beaujolais', '.', '(', '2017', '-', '2023', ')']]).
accord(moulin_a_vent, viande).

% ------------------------------ Bourgogne -------------------------
% Coteaux Bourguignons
nom(coteaux_bourguignons, 'coteaux bourguignons').
region(coteaux_bourguignons, 'bourgogne').
appellation(coteaux_bourguignons, 'coteaux bourguignons').
couleur(coteaux_bourguignons, 'rouge').
annee(coteaux_bourguignons, 2014).
prix(coteaux_bourguignons, 8.85).
robe(coteaux_bourguignons, [
    ['belle', 'robe', 'rubis', 'claire', '.']
]).
nez(coteaux_bourguignons, [
    ['nez', 'frais', 'de', 'petits', 'fruits', 'rouges', '.']
]).
bouche(coteaux_bourguignons, [
    ['bouche', 'souple', ',', 'friande', 'et', 'gouleyante', '.']
]).
description(coteaux_bourguignons, [
    ['un', 'vin', 'plaisir', ',', 'frais', 'et', 'fruite', '.'],
    ['(', '2017', '-', '2019', ')']
]).
accord(coteaux_bourguignons, viande).

% Bourgogne Pinot Noir
nom(bourgogne_pinot_noir, 'bourgogne pinot noir').
region(bourgogne_pinot_noir, 'bourgogne').
appellation(bourgogne_pinot_noir, 'bourgogne').
couleur(bourgogne_pinot_noir, 'rouge').
annee(bourgogne_pinot_noir, 2014).
prix(bourgogne_pinot_noir, 11.45).
robe(bourgogne_pinot_noir, [
    ['robe', 'rubis', 'claire', 'et', 'limpide', '.']
]).
nez(bourgogne_pinot_noir, [
    ['nez', 'frais', 'de', 'petits', 'fruits', 'rouges'],
    ['(', 'framboise', ',', 'groseille', ')', '.']
]).
bouche(bourgogne_pinot_noir, [
    ['bouche', 'souple', ',', 'friande', ',', 'avec', 'une'],
    ['belle', 'acidite', 'qui', 'apporte', 'de', 'la'],
    ['fraicheur', '.']
]).
description(bourgogne_pinot_noir, [
    ['un', 'vin', 'gouleyant', ',', 'typique', 'du', 'cepage'],
    ['pinot', 'noir', '.', '(', '2017', '-', '2020', ')']
]).
accord(bourgogne_pinot_noir, viande).
accord(bourgogne_pinot_noir, volaille).

% Hautes-Cotes de Nuits
nom(hautes_cotes_de_nuits, 'hautes-cotes de nuits').
region(hautes_cotes_de_nuits, 'bourgogne').
appellation(hautes_cotes_de_nuits, 'hautes-cotes de nuits').
couleur(hautes_cotes_de_nuits, 'rouge').
annee(hautes_cotes_de_nuits, 2014).
prix(hautes_cotes_de_nuits, 14.35).
robe(hautes_cotes_de_nuits, [
    ['robe', 'grenat', 'soutenue', '.']
]).
nez(hautes_cotes_de_nuits, [
    ['nez', 'raffine', 'de', 'griotte', 'et', 'de', 'notes'],
    ['sous-bois', '.']
]).
bouche(hautes_cotes_de_nuits, [
    ['belle', 'matiere', ',', 'tannins', 'veloutes', 'et'],
    ['finale', 'persistante', '.']
]).
description(hautes_cotes_de_nuits, [
    ['un', 'vin', 'equilibre', 'et', 'plein', 'de', 'caractere', '.'],
    ['(', '2017', '-', '2022', ')']
]).
accord(hautes_cotes_de_nuits, viande).

% Savigny-les-Beaune
nom(savigny_les_beaune, 'savigny-les-beaune').
region(savigny_les_beaune, 'bourgogne').
appellation(savigny_les_beaune, 'savigny-les-beaune').
couleur(savigny_les_beaune, 'rouge').
annee(savigny_les_beaune, 2014).
prix(savigny_les_beaune, 18.25).
robe(savigny_les_beaune, [
    ['robe', 'cerise', 'profonde', '.']
]).
nez(savigny_les_beaune, [
    ['bouquet', 'elegant', 'de', 'petits', 'fruits'],
    ['noirs', 'et', 'de', 'violette', '.']
]).
bouche(savigny_les_beaune, [
    ['bouche', 'ronde', ',', 'charnue', 'et', 'bien'],
    ['structuree', '.']
]).
description(savigny_les_beaune, [
    ['un', 'grand', 'classique', 'de', 'la', 'cote', 'de'],
    ['beaune', '.', '(', '2017', '-', '2023', ')']
]).
accord(savigny_les_beaune, viande).

% Savigny-les-Beaune 1er cru
nom(savigny_les_beaune_1er_cru, 'savigny-les-beaune 1er cru').
region(savigny_les_beaune_1er_cru, 'bourgogne').
appellation(savigny_les_beaune_1er_cru, 'savigny-les-beaune 1er cru').
couleur(savigny_les_beaune_1er_cru, 'rouge').
annee(savigny_les_beaune_1er_cru, 2014).
prix(savigny_les_beaune_1er_cru, 23.50).
robe(savigny_les_beaune_1er_cru, [
    ['robe', 'rubis', 'intense', '.']
]).
nez(savigny_les_beaune_1er_cru, [
    ['nez', 'complexe', 'alliant', 'fruits', 'rouges', ','],
    ['epices', 'et', 'notes', 'fumees', '.']
]).
bouche(savigny_les_beaune_1er_cru, [
    ['bouche', 'puissante', ',', 'genereuse', 'avec', 'une'],
    ['grande', 'finesse', 'de', 'tannins', '.']
]).
description(savigny_les_beaune_1er_cru, [
    ['un', 'vin', 'noble', 'et', 'tres', 'persistant', '.'],
    ['(', '2017', '-', '2025', ')']
]).
accord(savigny_les_beaune_1er_cru, viande).
accord(savigny_les_beaune_1er_cru, gibier).

% ------------------------------ Val de Loire -------------------------
% Chinon Vieilles Vignes 2014
nom(chinon_vieilles_vignes, 'Chinon Vieilles Vignes 2014').
region(chinon_vieilles_vignes, 'val de loire').
appellation(chinon_vieilles_vignes, 'chinon').
couleur(chinon_vieilles_vignes, 'rouge').
annee(chinon_vieilles_vignes, 2014).
prix(chinon_vieilles_vignes, 8.39).
robe(chinon_vieilles_vignes, [
    ['non', 'precise', '.']
]).
nez(chinon_vieilles_vignes, [
    ['nez', 'bien', 'marque', 'par', 'le', 'cabernet', 'franc', 'bien', 'mur', ','],
    ['avec', 'des', 'aromes', 'de', 'reglisse', 'noire', ',', 'de', 'vanille', 'et'],
    ['de', 'fruits', 'rouges', 'associes', 'a', 'une', 'nuance', 'sous-bois', '.']
]).
bouche(chinon_vieilles_vignes, [
    ['en', 'bouche', ',', 'les', 'saveurs', 'sont', 'd\'', 'une', 'remarquable'],
    ['intensite', 'alliant', 'structure', ',', 'volume', ',', 'race', 'et'],
    ['concentration', '.']
]).
description(chinon_vieilles_vignes, [
    ['un', 'magnifique', 'chinon', ',', 'puissant', 'et', 'tres', 'bien', 'type', '.'],
    ['gastronomique', '.']
]).
accord(chinon_vieilles_vignes, viande).
accord(chinon_vieilles_vignes, volaille).

% Sancerre rouge 2015
nom(sancerre_rouge, 'Sancerre rouge 2015').
region(sancerre_rouge, 'val de loire').
appellation(sancerre_rouge, 'sancerre').
couleur(sancerre_rouge, 'rouge').
annee(sancerre_rouge, 2015).
prix(sancerre_rouge, 15.13).
robe(sancerre_rouge, [
    ['non', 'precise', '.']
]).
nez(sancerre_rouge, [
    ['nez', 'aromatique', 'et', 'friand', 'du', 'pinote', 'cerise', 'rouge'],
    ['du', 'nord', 'fruits', 'des', 'bois', ',', 'sous-bois', ',', 'champignons', '.']
]).
bouche(sancerre_rouge, [
    ['la', 'bouche', 'est', 'delicieuse', ',', 'charmeuse', ',', 'deployant'],
    ['ses', 'notes', 'de', 'fruits', 'et', 'd\'', 'epices', '(', 'notes', 'de', 'poivre', ')'],
    ['avec', 'fraicheur', 'et', 'elegance', '.', 'le', 'vin', 'est', 'rond', ','],
    ['ample', ',', 'souple', ',', 'et', 'soyeux', '.', 'la', 'finale', 'tres'],
    ['harmonieuse', 'temoigne', 'de', 'la', 'maturite', 'de', 'ce', 'cru', '.']
]).
description(sancerre_rouge, [
    ['description', 'indisponible', '.']
]).
accord(sancerre_rouge, viande).
accord(sancerre_rouge, volaille).

% ------------------------------ Vins Blancs -------------------------
% Les Guignards 2015
nom(les_guignards, 'Les Guignards 2015-AOC Cotes de Duras').
region(les_guignards, 'sud-ouest').
appellation(les_guignards, 'cotes de duras').
couleur(les_guignards, 'blanc').
annee(les_guignards, 2015).
prix(les_guignards, 5.30).
robe(les_guignards, [
    ['belle', 'robe', 'aux', 'reflets', 'verts', '.']
]).
nez(les_guignards, [
    ['nez', 'charmeur', ',', 'a', 'la', 'fois', 'frais', 'et'],
    ['expressif', ',', 'evoquant', 'des', 'aromes', 'de'],
    ['cassis', 'et', 'de', 'fruits', 'du', 'verger', '.']
]).
bouche(les_guignards, [
    ['nuance', 'd\'', 'agrumes', 'et', 'de', 'rose', '.', 'c\'', 'est'],
    ['un', 'vin', 'expressif', ',', 'bien', 'equilibre', ','],
    ['harmonieux', ',', 'qui', 'allie', 'la', 'fraicheur', 'du'],
    ['sauvignon', 'a', 'la', 'tendresse', 'de', 'la'],
    ['muscadelle', '.']
]).
description(les_guignards, [
    ['tres', 'polyvalent', '.', 'delicieux', '!']
]).
accord(les_guignards, poisson).

% Chardonnay Exception 2016
nom(chardonnay_exception, 'Chardonnay Exception 2016-Vin de Pays d\'Oc').
region(chardonnay_exception, 'languedoc').
appellation(chardonnay_exception, 'vin de pays d\'oc').
couleur(chardonnay_exception, 'blanc').
annee(chardonnay_exception, 2016).
prix(chardonnay_exception, 6.47).
robe(chardonnay_exception, [
    ['non', 'precise', '.']
]).
nez(chardonnay_exception, [
    ['nez', 'intense', 'et', 'expressif', 'aux', 'aromes'],
    ['de', 'fruits', 'du', 'verger', ',', 'avec', 'une'],
    ['touche', 'boisee', '.']
]).
bouche(chardonnay_exception, [
    ['le', 'nez', 'se', 'prolonge', 'en', 'bouche', 'avec'],
    ['beaucoup', 'd\'', 'epices', ',', 'de', 'caractere', 'et'],
    ['de', 'volume', '.', 'un', 'vin', 'relativement'],
    ['puissant', ',', 'et', 'une', 'finale', 'en', 'rondeur', ','],
    ['laissant', 'un', 'excellent', 'souvenir', '.']
]).
description(chardonnay_exception, [
    ['note', 'boisee', 'tout', 'au', 'long', 'de', 'la'],
    ['degustation', '.']
]).
accord(chardonnay_exception, poisson).
accord(chardonnay_exception, volaille).

% Cotes du Rhone 2016
nom(cotes_du_rhone_blanc, 'Cotes du Rhone 2016 Cuvee Pierre et Charlotte').
region(cotes_du_rhone_blanc, 'rhone').
appellation(cotes_du_rhone_blanc, 'cotes du rhone').
couleur(cotes_du_rhone_blanc, 'blanc').
annee(cotes_du_rhone_blanc, 2016).
prix(cotes_du_rhone_blanc, 7.02).
robe(cotes_du_rhone_blanc, [
    ['non', 'precise', '.']
]).
nez(cotes_du_rhone_blanc, [
    ['nez', 'genereusement', 'parfume', '.', 'l\'', 'abricot'],
    ['et', 'la', 'peche', 'blanche', 'dominent', 'avec'],
    ['des', 'nuances', 'de', 'fruits', 'secs', 'et', 'd\''],
    ['epices', '.']
]).
bouche(cotes_du_rhone_blanc, [
    ['la', 'bouche', 'est', 'riche', 'et', 'ronde', ',', 'avec'],
    ['des', 'saveurs', 'fruitees', ',', 'bien', 'mures'],
    ['associees', 'a', 'une', 'subtile', 'touche', 'boisee'],
    ['bien', 'integree', '.']
]).
description(cotes_du_rhone_blanc, [
    ['l\'', 'ensemble', 'est', 'race', ',', 'souple', 'et'],
    ['equilibre', '.', 'frais', 'et', 'gourmand', '.', 'un'],
    ['maitre-achat', '!']
]).
accord(cotes_du_rhone_blanc, poisson).

% Ch. Le Druc 2015
nom(ch_le_druc, 'Ch. Le Druc 2015-Graves').
region(ch_le_druc, 'bordeaux').
appellation(ch_le_druc, 'graves').
couleur(ch_le_druc, 'blanc').
annee(ch_le_druc, 2015).
prix(ch_le_druc, 7.62).
robe(ch_le_druc, [
    ['non', 'precise', '.']
]).
nez(ch_le_druc, [
    ['beau', 'nez', 'expressif', ',', 'abricot', ',', 'agrumes'],
    ['murs', ',', 'avec', 'de', 'belles', 'nuances'],
    ['florales', 'qui', 'accompagnent', 'une', 'touche'],
    ['empyreumatique', '(', 'grillee', ')', '.']
]).
bouche(ch_le_druc, [
    ['l\'', 'attaque', 'est', 'juteuse', ',', 'genereuse', ','],
    ['la', 'suite', 'allie', 'gras', 'et', 'fraicheur', ','],
    ['avec', 'une', 'belle', 'intensite', '.']
]).
description(ch_le_druc, [
    ['excellent', 'rapport', 'qualite', 'prix', '.']
]).
accord(ch_le_druc, poisson).

% Laudun 2016
nom(laudun_blanc, 'Laudun 2016-Cotes du Rhone Villages').
region(laudun_blanc, 'rhone').
appellation(laudun_blanc, 'laudun').
couleur(laudun_blanc, 'blanc').
annee(laudun_blanc, 2016).
prix(laudun_blanc, 8.83).
robe(laudun_blanc, [
    ['non', 'precise', '.']
]).
nez(laudun_blanc, [
    ['magnifique', 'nez', 'intense', 'de', 'fruits', 'du'],
    ['verger', '(', 'peche', ',', 'mirabelle', ')', 'associes'],
    ['a', 'des', 'nuances', 'd\'', 'epices', 'et', 'une'],
    ['note', 'citronnee', '.']
]).
bouche(laudun_blanc, [
    ['cette', 'intensite', 'aromatique', 'se', 'prolonge'],
    ['en', 'bouche', 'avec', 'des', 'saveurs', 'a', 'la'],
    ['fois', 'denses', ',', 'racees', 'et', 'complexes', '.']
]).
description(laudun_blanc, [
    ['la', 'finale', 'alluree', ',', 'laisse', 'le', 'souvenir'],
    ['d\'', 'un', 'vin', 'important', 'aux', 'saveurs'],
    ['persistantes', '.', 'une', 'magnifique', 'decouverte', '!']
]).
accord(laudun_blanc, poisson).
accord(laudun_blanc, volaille).

% Vouvray blanc sec 2016
nom(vouvray_blanc_sec, 'Vouvray blanc sec 2016').
region(vouvray_blanc_sec, 'val de loire').
appellation(vouvray_blanc_sec, 'vouvray').
couleur(vouvray_blanc_sec, 'blanc').
annee(vouvray_blanc_sec, 2016).
prix(vouvray_blanc_sec, 10.10).
robe(vouvray_blanc_sec, [
    ['non', 'precise', '.']
]).
nez(vouvray_blanc_sec, [
    ['des', 'la', 'mise', 'au', 'nez', ',', 'on', 'retrouve'],
    ['toute', 'la', 'typicite', 'du', 'cepage', 'chenin'],
    ['avec', 'des', 'aromes', 'de', 'tilleul', 'associes'],
    ['a', 'des', 'nuances', 'de', 'rose', '.']
]).
bouche(vouvray_blanc_sec, [
    ['l\'', 'attaque', 'est', 'genereuse', ',', 'la', 'suite'],
    ['plus', 'minerale', 'devoile', 'toute', 'la', 'race'],
    ['de', 'ce', 'cru', '.', 'la', 'finale', 'laisse', 'le'],
    ['souvenir', 'd\'', 'un', 'vin', 'de', 'caractere', ','],
    ['tres', 'elegant', '.']
]).
description(vouvray_blanc_sec, [
    ['description', 'indisponible', '.']
]).
accord(vouvray_blanc_sec, poisson).

% Macon Villages 2015
nom(macon_villages, 'Macon-Villages 2015').
region(macon_villages, 'bourgogne').
appellation(macon_villages, 'macon-villages').
couleur(macon_villages, 'blanc').
annee(macon_villages, 2015).
prix(macon_villages, 10.59).
robe(macon_villages, [
    ['non', 'precise', '.']
]).
nez(macon_villages, [
    ['magnifique', 'expression', 'du', 'cepage', 'chardonnay'],
    ['sur', 'un', 'terroir', 'de', 'bourgogne', '.', 'tant'],
    ['au', 'nez', 'qu\'', 'en', 'bouche', ',', 'on', 'est', 'sous'],
    ['le', 'charme', 'des', 'fruits', '(', 'pomme', ',', 'coing', ')'],
    ['des', 'notes', 'de', 'beurre', 'et', 'de', 'miel', '.']
]).
bouche(macon_villages, [
    ['l\'', 'ensemble', 'est', 'tres', 'equilibre', ','],
    ['alliant', 'harmonie', ',', 'ampleur', ',', 'race'],
    ['et', 'elegance', '.']
]).
description(macon_villages, [
    ['un', 'bourgogne', 'blanc', 'comme', 'on', 'les'],
    ['aime', '!', 'delicieux', '.']
]).
accord(macon_villages, poisson).
accord(macon_villages, volaille).

% Pinot Gris 2015
nom(pinot_gris, 'Pinot Gris 2015').
region(pinot_gris, 'alsace').
appellation(pinot_gris, 'pinot gris').
couleur(pinot_gris, 'blanc').
annee(pinot_gris, 2015).
prix(pinot_gris, 10.59).
robe(pinot_gris, [
    ['non', 'precise', '.']
]).
nez(pinot_gris, [
    ['nez', 'parfume', 'de', 'fruits', 'frais', '(', 'fruits'],
    ['a', 'chair', 'blanche', 'et', 'exotiques', ',', 'litchis', ')', '.']
]).
bouche(pinot_gris, [
    ['la', 'bouche', 'est', 'fruitee', ',', 'riche', 'et'],
    ['elegante', '.', 'un', 'pinot', 'gris', 'plein', 'de'],
    ['charme', 'a', 'la', 'finale', 'juteuse', '.']
]).
description(pinot_gris, [
    ['delicieux', '.']
]).
accord(pinot_gris, poisson).
accord(pinot_gris, volaille).

% Gewurztraminer 2015
nom(gewurztraminer, 'Gewurztraminer 2015').
region(gewurztraminer, 'alsace').
appellation(gewurztraminer, 'gewurztraminer').
couleur(gewurztraminer, 'blanc').
annee(gewurztraminer, 2015).
prix(gewurztraminer, 12.28).
robe(gewurztraminer, [
    ['non', 'precise', '.']
]).
nez(gewurztraminer, [
    ['quelle', 'palette', 'aromatique', '!', 'on', 'y'],
    ['retrouve', 'avec', 'intensite', 'les', 'fruits', 'a'],
    ['chair', 'blanche', 'et', 'exotiques', '(', 'litchis', ')', ','],
    ['les', 'nuances', 'de', 'fleurs', '(', 'roses', ',', 'lilas', ')'],
    ['et', 'd\'', 'epices', '.']
]).
bouche(gewurztraminer, [
    ['la', 'bouche', 'se', 'montre', 'genereuse', 'des'],
    ['l\'', 'attaque', ',', 'la', 'suite', 'en', 'equilibre'],
    ['est', 'tres', 'harmonieuse', '.']
]).
description(gewurztraminer, [
    ['finale', 'distinguee', ',', 'laissant', 'un'],
    ['agreable', 'souvenir', '.']
]).
accord(gewurztraminer, volaille).

% Vire-Clesse 2016
nom(vire_clesse, 'Vire-Clesse 2016').
region(vire_clesse, 'bourgogne').
appellation(vire_clesse, 'vire-clesse').
couleur(vire_clesse, 'blanc').
annee(vire_clesse, 2016).
prix(vire_clesse, 12.77).
robe(vire_clesse, [
    ['non', 'precise', '.']
]).
nez(vire_clesse, [
    ['la', 'sensation', 'd\'', 'intensite', 'aromatique'],
    ['(', 'pomme', ',', 'coing', ',', 'peche', ',', 'miel', ')', ','],
    ['se', 'poursuit', 'en', 'bouche', '.']
]).
bouche(vire_clesse, [
    ['saveurs', 'fruitees', ',', 'minerales', ',', 'florales', ','],
    ['riches', 'et', 'expressives', '.', 'l\'', 'ensemble'],
    ['marie', 'merveilleusement', 'une', 'texture', 'ronde'],
    ['et', 'onctueuse', 'a', 'une', 'belle', 'fraicheur', '.']
]).
description(vire_clesse, [
    ['un', 'style', 'proche', 'des', 'celebres', 'crus', 'du'],
    ['maconnais', ',', 'avec', 'beaucoup', 'de', 'race', ','],
    ['de', 'complexite', 'et', 'de', 'concentration', '.']
]).
accord(vire_clesse, poisson).

% Sancerre blanc 2015
nom(sancerre_blanc, 'Sancerre blanc 2015-Vignoble de Verdigny').
region(sancerre_blanc, 'val de loire').
appellation(sancerre_blanc, 'sancerre').
couleur(sancerre_blanc, 'blanc').
annee(sancerre_blanc, 2015).
prix(sancerre_blanc, 16.01).
robe(sancerre_blanc, [
    ['non', 'precise', '.']
]).
nez(sancerre_blanc, [
    ['superbe', 'nez', 'race', ',', 'mineral', 'aux'],
    ['aromes', 'de', 'fruits', 'murs', ',', 'de', 'cassis', ','],
    ['d\'', 'eglantier', ',', 'de', 'buis', '.']
]).
bouche(sancerre_blanc, [
    ['belle', 'expression', 'en', 'bouche', ',', 'mariant'],
    ['mineralite', 'et', 'fruit', ',', 'avec', 'une'],
    ['belle', 'fraicheur', '.']
]).
description(sancerre_blanc, [
    ['un', 'grand', 'classique', '.']
]).
accord(sancerre_blanc, poisson).

% Vacqueyras 2016
nom(vacqueyras_blanc, 'Vacqueyras 2016').
region(vacqueyras_blanc, 'rhone').
appellation(vacqueyras_blanc, 'vacqueyras').
couleur(vacqueyras_blanc, 'blanc').
annee(vacqueyras_blanc, 2016).
prix(vacqueyras_blanc, 16.37).
robe(vacqueyras_blanc, [
    ['non', 'precise', '.']
]).
nez(vacqueyras_blanc, [
    ['belle', 'intensite', 'aromatique', 'avec', 'des'],
    ['notes', 'd\'', 'abricot', ',', 'de', 'peche', 'blanche', ','],
    ['de', 'raisin', 'frais', 'et', 'de', 'poire', 'associees'],
    ['a', 'des', 'nuances', 'd\'', 'epices', '(', 'pain', 'grille', ','],
    ['thym', ')', 'et', 'minerales', '.']
]).
bouche(vacqueyras_blanc, [
    ['magnifique', 'sensation', 'de', 'plenitude', 'avec'],
    ['volume', ',', 'densite', 'et', 'longueur', '.', 'c\'', 'est'],
    ['un', 'vin', 'equilibre', 'qui', 'a', 'du', 'corps', ','],
    ['beaucoup', 'de', 'gras', 'et', 'peu', 'd\'', 'acidite', '.']
]).
description(vacqueyras_blanc, [
    ['tout', 'simplement', 'delicieux', '!']
]).
accord(vacqueyras_blanc, poisson).

% Hautes Cotes de Beaune 2015
nom(hautes_cotes_de_beaune, 'Hautes Cotes de Beaune 2015').
region(hautes_cotes_de_beaune, 'bourgogne').
appellation(hautes_cotes_de_beaune, 'hautes cotes de beaune').
couleur(hautes_cotes_de_beaune, 'blanc').
annee(hautes_cotes_de_beaune, 2015).
prix(hautes_cotes_de_beaune, 16.58).
robe(hautes_cotes_de_beaune, [
    ['non', 'precise', '.']
]).
nez(hautes_cotes_de_beaune, [
    ['nez', 'intensement', 'parfume', 'aux', 'aromes', 'de'],
    ['fleurs', 'blanches', ',', 'de', 'fruits', 'du'],
    ['verger', 'associes', 'a', 'des', 'nuances', 'de'],
    ['fruits', 'secs', '(', 'noisettes', ')', '.']
]).
bouche(hautes_cotes_de_beaune, [
    ['la', 'bouche', 'est', 'intense', ',', 'et', 'genereuse'],
    ['elle', 'developpe', 'une', 'sensation', 'riche', 'et'],
    ['beurree', '.', 'boise', 'bien', 'integre', 'tout', 'au'],
    ['long', 'de', 'la', 'degustation', '.']
]).
description(hautes_cotes_de_beaune, [
    ['magnifique', 'bourgogne', 'gastronomique', ',', 'dans'],
    ['un', 'excellent', 'rapport', 'plaisir/prix', '.']
]).
accord(hautes_cotes_de_beaune, poisson).
accord(hautes_cotes_de_beaune, volaille).

% Pouilly-Fuissé 2014
nom(pouilly_fuisse, 'Pouilly-Fuissé 2014').
region(pouilly_fuisse, 'bourgogne').
appellation(pouilly_fuisse, 'pouilly-fuisse').
couleur(pouilly_fuisse, 'blanc').
annee(pouilly_fuisse, 2014).
prix(pouilly_fuisse, 18.67).
robe(pouilly_fuisse, [
    ['non', 'precise', '.']
]).
nez(pouilly_fuisse, [
    ['nez', 'mineral', ',', 'elegant', ',', 'race', 'et'],
    ['complexe', 'avec', 'de', 'jolies', 'notes', 'de'],
    ['fruits', 'du', 'verger', '(', 'coing', ',', 'pomme', ')'],
    ['associes', 'a', 'des', 'nuances', 'de', 'noisette'],
    ['grillee', 'et', 'de', 'beurre', '.']
]).
bouche(pouilly_fuisse, [
    ['la', 'bouche', 'est', 'minerale', ',', 'assez'],
    ['puissante', 'avec', 'du', 'fruit', ',', 'du', 'gras'],
    ['et', 'en', 'finale', 'une', 'agreable', 'touche'],
    ['boisee', '.', 'tres', 'belle', 'longueur', '.']
]).
description(pouilly_fuisse, [
    ['pour', 'crustaces', 'et', 'poissons', 'en', 'sauce', '.']
]).
accord(pouilly_fuisse, poisson).
accord(pouilly_fuisse, volaille).

% Chablis 1er Cru 2014
nom(chablis_1er_cru, 'Chablis 1er Cru Montmains 2014').
region(chablis_1er_cru, 'bourgogne').
appellation(chablis_1er_cru, 'chablis 1er cru').
couleur(chablis_1er_cru, 'blanc').
annee(chablis_1er_cru, 2014).
prix(chablis_1er_cru, 21.13).
robe(chablis_1er_cru, [
    ['non', 'precise', '.']
]).
nez(chablis_1er_cru, [
    ['nez', 'intense', 'd\'', 'aromes', 'de', 'fruits', 'du'],
    ['verger', ',', 'associes', 'a', 'des', 'nuances'],
    ['iodees', 'et', 'noisetees', '.']
]).
bouche(chablis_1er_cru, [
    ['en', 'bouche', ',', 'les', 'saveurs', 'sont'],
    ['complexes', ',', 'avec', 'beaucoup', 'de', 'race', ','],
    ['de', 'mineralite', 'et', 'ces', 'notes', 'salines'],
    ['et', 'iodees', 'tout', 'a', 'fait'],
    ['caracteristiques', 'de', 'l\'', 'appellation', '.']
]).
description(chablis_1er_cru, [
    ['grande', 'longueur', '.', 'un', 'chablis', '1er', 'cru'],
    ['tres', 'race', ',', 'pour', 'les', 'amateurs', 'de'],
    ['l\'', 'aoc', '.']
]).
accord(chablis_1er_cru, poisson).

% Condrieu 2015
nom(condrieu, 'Condrieu 2015').
region(condrieu, 'rhone').
appellation(condrieu, 'condrieu').
couleur(condrieu, 'blanc').
annee(condrieu, 2015).
prix(condrieu, 32.07).
robe(condrieu, [
    ['non', 'precise', '.']
]).
nez(condrieu, [
    ['belle', 'intensite', 'aromatique', 'a', 'la', 'fois'],
    ['riche', 'et', 'complexe', ',', 'avec', 'des', 'aromes'],
    ['d\'', 'abricot', ',', 'de', 'peche', ',', 'et', 'une'],
    ['intensite', 'epicee', 'remarquable', '.']
]).
bouche(condrieu, [
    ['la', 'bouche', 'allie', 'volume', 'et', 'equilibre', '.'],
    ['on', 'apprecie', 'la', 'race', ',', 'la', 'mineralite'],
    ['et', 'l\'', 'onctuosite', '.', 'grande', 'longueur', '.']
]).
description(condrieu, [
    ['parmi', 'les', 'plus', 'grands', 'vins', 'blancs', 'de'],
    ['france', '.', 'voici', 'un', 'tres', 'grand', 'vin', 'des'],
    ['cotes', 'du', 'rhone', '.', 'superbe', '.']
]).
accord(condrieu, poisson).


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
accord(champagne_brut_selection, poisson).

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
accord(champagne_brut_blanc_de_blancs, poisson).

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
accord(champagne_brut_rose, volaille).

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
accord(champagne_brut_prestige, poisson).

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

