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
/*
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
*/

% ---------------------------------------- Normalisation ChatGPT ----------------------------------------
% ------------------------------ Bordeaux -------------------------

% Ch. Moulin de Mallet
fusion_vin(['moulin', 'de', 'mallet'], ch_moulin_de_mallet).
fusion_vin(['moulin', 'mallet'], ch_moulin_de_mallet).

% Ch. La Fleur Baudron
fusion_vin(['la', 'fleur', 'baudron'], ch_la_fleur_baudron).
fusion_vin(['fleur', 'baudron'], ch_la_fleur_baudron).

% Ch. Bois Vert Cuvée Elégance
fusion_vin(['bois', 'vert', 'cuvee', 'elegance'], ch_bois_vert_cuvee_elegance).
fusion_vin(['bois', 'vert'], ch_bois_vert_cuvee_elegance).
fusion_vin(['cuvee', 'elegance'], ch_bois_vert_cuvee_elegance).

% Ch. Paret
fusion_vin(['paret'], ch_paret).

% Ch. Ménota Cuvée Montgarède
fusion_vin(['menota', 'cuvee', 'montgarede'], ch_menota_cuvee_montgarede).
fusion_vin(['menota'], ch_menota_cuvee_montgarede).
fusion_vin(['montgarede'], ch_menota_cuvee_montgarede).

% Ch. Les Polyanthas
fusion_vin(['les', 'polyanthas'], ch_les_polyanthas).
fusion_vin(['polyanthas'], ch_les_polyanthas).

% Ch. La Menotte
fusion_vin(['la', 'menotte'], ch_la_menotte).
fusion_vin(['menotte'], ch_la_menotte).

% La Fleur de Pomys
fusion_vin(['la', 'fleur', 'de', 'pomys'], la_fleur_de_pomys).
fusion_vin(['fleur', 'de', 'pomys'], la_fleur_de_pomys).
fusion_vin(['pomys'], la_fleur_de_pomys).

% Florilège Pauillac
fusion_vin(['florilege', 'pauillac'], florilege_pauillac).
fusion_vin(['florilege'], florilege_pauillac).
fusion_vin(['pauillac'], florilege_pauillac).

% Florilège Saint-Julien
fusion_vin(['florilege', 'saint', 'julien'], florilege_saint_julien).
fusion_vin(['saint', 'julien'], florilege_saint_julien).

% Florilège Pomerol
fusion_vin(['florilege', 'pomerol'], florilege_pomerol).
fusion_vin(['pomerol'], florilege_pomerol).

% Ch. du Moulin Neuf Cuvée Prestige
fusion_vin(['moulin', 'neuf', 'cuvee', 'prestige'], ch_moulin_neuf_cuvee_prestige).
fusion_vin(['moulin', 'neuf'], ch_moulin_neuf_cuvee_prestige).

% Ch. Milon La Grave Cuvée Particulière
fusion_vin(['milon', 'la', 'grave', 'cuvee', 'particuliere'], ch_milon_la_grave_cuvee_particuliere).
fusion_vin(['milon', 'la', 'grave'], ch_milon_la_grave_cuvee_particuliere).
fusion_vin(['milon'], ch_milon_la_grave_cuvee_particuliere).

% Ch. Roc de Binet
fusion_vin(['roc', 'de', 'binet'], ch_roc_de_binet).
fusion_vin(['roc', 'binet'], ch_roc_de_binet).

% Ch. Ruat Petit Poujeaux
fusion_vin(['ruat', 'petit', 'poujeaux'], ch_ruat_petit_poujeaux).
fusion_vin(['ruat'], ch_ruat_petit_poujeaux).
fusion_vin(['petit', 'poujeaux'], ch_ruat_petit_poujeaux).

% Ch. Le Druc (Grave blanc)
fusion_vin(['le', 'druc'], ch_le_druc).
fusion_vin(['druc'], ch_le_druc).

% ------------------------------ Champagnes -------------------------
% Champagne Brut Selection
fusion_vin(['selection'], champagne_brut_selection).
fusion_vin(['brut', 'selection'], champagne_brut_selection).

% Champagne Brut Blanc de Blancs
fusion_vin(['blanc', 'de', 'blancs'], champagne_brut_blanc_de_blancs).
fusion_vin(['brut', 'blanc', 'de', 'blancs'], champagne_brut_blanc_de_blancs).

% Champagne Brut Rose
fusion_vin(['rose'], champagne_brut_rose).
fusion_vin(['brut', 'rose'], champagne_brut_rose).

% Champagne Brut Prestige
fusion_vin(['prestige'], champagne_brut_prestige).
fusion_vin(['brut', 'prestige'], champagne_brut_prestige).

% ------------------------------ Cognacs -------------------------
% Cognac Trois Etoiles
fusion_vin(['trois', 'etoiles'], cognac_trois_etoiles).
fusion_vin(['cognac', 'trois', 'etoiles'], cognac_trois_etoiles).

% Cognac Fine Champagne VSOP
fusion_vin(['fine', 'champagne', 'vsop'], cognac_fine_champagne_vsop).
fusion_vin(['cognac', 'vsop'], cognac_fine_champagne_vsop).
fusion_vin(['vsop'], cognac_fine_champagne_vsop).

% Cognac Grande Champagne Hors d'Age
fusion_vin(['grande', 'champagne', 'hors', 'd', 'age'], cognac_grande_champagne_hors_d_age).
fusion_vin(['hors', 'd', 'age'], cognac_grande_champagne_hors_d_age).
fusion_vin(['cognac', 'hors', 'd', 'age'], cognac_grande_champagne_hors_d_age).