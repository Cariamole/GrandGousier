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

simil(an,millesime).
simil(annee,millesime).
simil(annees,millesime).
simil(millesimes,millesime).

simil(mets,accord).
simil(plat,accord).
simil(plats,accord).
simil(accompagne,accord).
simil(accompagner,accord).
simil(accompagnement,accord).
simil(accompagnements,accord).
simil(repas,accord).
simil(manger,accord).
simil(accords,accord).

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


% ---------------------------------------- Normalisation des noms de vin (Gemini) ----------------------------------------
% ------------------------------ Bordeaux -------------------------

% Ch. Moulin de Mallet
fusion_vin(['moulin', 'de', 'mallet'], ch_moulin_de_mallet).
fusion_vin(['moulin', 'mallet'], ch_moulin_de_mallet).
fusion_vin(['mallet'], ch_moulin_de_mallet).

% Ch. La Fleur Baudron
fusion_vin(['la', 'fleur', 'baudron'], ch_la_fleur_baudron).
fusion_vin(['fleur', 'baudron'], ch_la_fleur_baudron).
fusion_vin(['baudron'], ch_la_fleur_baudron).

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

% ------------------------------ Cotes du Rhone et du Languedoc -----
% Syrah-Vin de Pays d'Oc (2015)
fusion_vin(['syrah'], syrah_vin_de_pays_d_oc).
fusion_vin(['syrah', 'vin', 'de', 'pays', 'd', 'oc'], syrah_vin_de_pays_d_oc).

% Côtes du Rhône Villages (2014)
fusion_vin(['cotes', 'du', 'rhone', 'villages'], cotes_du_rhone_villages).
fusion_vin(['rhone', 'villages'], cotes_du_rhone_villages).

% Tautavel-Côtes du Roussillon Villages (2014)
fusion_vin(['tautavel'], tautavel_cotes_du_roussillon_villages).
fusion_vin(['tautavel', 'cotes', 'du', 'roussillon', 'villages'], tautavel_cotes_du_roussillon_villages).

% Lirac (2015)
fusion_vin(['lirac'], lirac).

% Cairanne (2014)
fusion_vin(['cairanne'], cairanne).

% Beaumes de Venise (2015)
fusion_vin(['beaumes', 'de', 'venise'], beaumes_de_venise).
fusion_vin(['beaumes'], beaumes_de_venise).

% Vacqueyras (2014)
fusion_vin(['vacqueyras'], vacqueyras).

% Saint-Joseph (2014)
fusion_vin(['saint', 'joseph'], saint_joseph).

% Gigondas (2014)
fusion_vin(['gigondas'], gigondas).

% Chateauneuf du Pape Rouge (2013)
fusion_vin(['chateauneuf', 'du', 'pape', 'rouge'], chateauneuf_du_pape_rouge).
fusion_vin(['chateauneuf', 'du', 'pape'], chateauneuf_du_pape_rouge).

% Hermitage rouge (2007)
fusion_vin(['hermitage', 'rouge'], hermitage_rouge).
fusion_vin(['hermitage'], hermitage_rouge).

% Aloxe-Corton (2014)
fusion_vin(['aloxe', 'corton'], aloxe_corton).
fusion_vin(['aloxe'], aloxe_corton).

% Nuits-Saint-Georges 1er cru (2013)
fusion_vin(['nuits', 'saint', 'georges', '1er', 'cru'], nuits_saint_georges_1er_cru).
fusion_vin(['nuits', 'saint', 'georges'], nuits_saint_georges_1er_cru).

% Chambolle-Musigny (2014)
fusion_vin(['chambolle', 'musigny'], chambolle_musigny).
fusion_vin(['chambolle'], chambolle_musigny).

% ------------------------------ Beaujolais -------------------------
% Chiroubles
fusion_vin(['chiroubles'], chiroubles).

% Fleurie
fusion_vin(['fleurie'], fleurie).

% Moulin-a-Vent
fusion_vin(['moulin', 'a', 'vent'], moulin_a_vent).

% ------------------------------ Bourgogne -------------------------
% Coteaux Bourguignons
fusion_vin(['coteaux', 'bourguignons'], coteaux_bourguignons).
fusion_vin(['coteaux'], coteaux_bourguignons).

% Bourgogne Pinot Noir
fusion_vin(['bourgogne', 'pinot', 'noir'], bourgogne_pinot_noir).
fusion_vin(['pinot', 'noir'], bourgogne_pinot_noir).

% Hautes-Cotes de Nuits
fusion_vin(['hautes', 'cotes', 'de', 'nuits'], hautes_cotes_de_nuits).
fusion_vin(['hautes', 'cotes'], hautes_cotes_de_nuits).

% Savigny-les-Beaune
fusion_vin(['savigny', 'les', 'beaune'], savigny_les_beaune).
fusion_vin(['savigny'], savigny_les_beaune).

% Savigny-les-Beaune 1er cru
fusion_vin(['savigny', 'les', 'beaune', '1er', 'cru'], savigny_les_beaune_1er_cru).
fusion_vin(['savigny', '1er', 'cru'], savigny_les_beaune_1er_cru).

% ------------------------------ Val de Loire -------------------------
% Chinon Vieilles Vignes 2014
fusion_vin(['chinon', 'vieilles', 'vignes'], chinon_vieilles_vignes).
fusion_vin(['chinon'], chinon_vieilles_vignes).

% Sancerre rouge 2015
fusion_vin(['sancerre', 'rouge'], sancerre_rouge).
fusion_vin(['sancerre'], sancerre_rouge).

% ------------------------------ Vins Blancs -------------------------
% Les Guignards 2015
fusion_vin(['les', 'guignards'], les_guignards).
fusion_vin(['guignards'], les_guignards).
fusion_vin(['duras'], les_guignards).

% Chardonnay Exception 2016
fusion_vin(['chardonnay', 'exception'], chardonnay_exception).
fusion_vin(['chardonnay'], chardonnay_exception).
fusion_vin(['pays', 'd\'', 'oc'], chardonnay_exception).

% Cotes du Rhone 2016
fusion_vin(['cotes', 'du', 'rhone', 'blanc'], cotes_du_rhone_blanc).
fusion_vin(['rhone', 'blanc'], cotes_du_rhone_blanc).
fusion_vin(['pierre', 'et', 'charlotte'], cotes_du_rhone_blanc).

% Ch. Le Druc 2015
fusion_vin(['ch', 'le', 'druc'], ch_le_druc).
fusion_vin(['le', 'druc'], ch_le_druc).
fusion_vin(['graves', 'blanc'], ch_le_druc).

% Laudun 2016
fusion_vin(['laudun', 'blanc'], laudun_blanc).
fusion_vin(['laudun'], laudun_blanc).
fusion_vin(['rhone', 'villages', 'blanc'], laudun_blanc).

% Vouvray blanc sec 2016
fusion_vin(['vouvray', 'blanc', 'sec'], vouvray_blanc_sec).
fusion_vin(['vouvray'], vouvray_blanc_sec).

% Macon Villages 2015
fusion_vin(['macon', 'villages'], macon_villages).
fusion_vin(['macon'], macon_villages).

% Pinot Gris 2015
fusion_vin(['pinot', 'gris'], pinot_gris).
fusion_vin(['alsace', 'pinot', 'gris'], pinot_gris).

% Gewurztraminer 2015
fusion_vin(['gewurztraminer'], gewurztraminer).
fusion_vin(['alsace', 'gewurztraminer'], gewurztraminer).

% Vire-Clesse 2016
fusion_vin(['vire', 'clesse'], vire_clesse).
fusion_vin(['vire'], vire_clesse).

% Sancerre blanc 2015
fusion_vin(['sancerre', 'blanc'], sancerre_blanc).
fusion_vin(['verdigny'], sancerre_blanc).

% Vacqueyras 2016
fusion_vin(['vacqueyras', 'blanc'], vacqueyras_blanc).
fusion_vin(['vacqueyras'], vacqueyras_blanc).

% Hautes Cotes de Beaune 2015
fusion_vin(['hautes', 'cotes', 'de', 'beaune', 'blanc'], hautes_cotes_de_beaune).
fusion_vin(['beaune', 'blanc'], hautes_cotes_de_beaune).

% Pouilly-Fuisse 2014
fusion_vin(['pouilly', 'fuisse'], pouilly_fuisse).
fusion_vin(['fuisse'], pouilly_fuisse).

% Chablis 1er Cru 2014
fusion_vin(['chablis', '1er', 'cru'], chablis_1er_cru).
fusion_vin(['chablis', 'montmains'], chablis_1er_cru).
fusion_vin(['chablis'], chablis_1er_cru).

% Condrieu 2015
fusion_vin(['condrieu'], condrieu).
fusion_vin(['condrieu', 'blanc'], condrieu).

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