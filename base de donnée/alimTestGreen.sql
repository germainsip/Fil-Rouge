USE villagegreen;
/* alimenter les tables dans l'ordre suivant:
client,commerciaux, suivipar
rubrique,sousrubrique,produit */

-- TABLE CLIENT --

INSERT IGNORE 
INTO client (client_id,client_nom,client_prenom,client_rue,client_ville,client_codepo,client_telephone,client_mail,client_type,client_siret,client_commerciaux_id)
VALUES (1,"George","Nolan","CP 214, 1460 Dui Avenue","Moerkerke","81313","01 29 81 29 27","et.ultrices.posuere@pharetranibh.ca","par",NULL,1),
       (2,"Sandoval","Linda","Appartement 443-4185 Lacinia. Route","Torgnon","12512","03 45 29 89 67","Proin.dolor@sodales.net","par",NULL,2),
       (3,"Johns","Judah","478-741 Urna. Av.","Baarle-Hertog","68356","01 47 64 91 62","nibh.Phasellus.nulla@veliteu.co.uk","pro","979188216-00001",3),
       (4,"Sweeney","Calista","CP 938, 319 A Av.","Wismar","65254","03 70 19 20 26","ornare@amet.ca","pro","236741799-00001",4),
       (5,"Pittman","Bianca","Appartement 680-4357 Eu Impasse","Yumbel","80081","04 32 28 83 80","sit@aliquamenimnec.org","pro","334401775-00005",5),
       (6,"Myers","Mikayla","9429 Non Route","Lafayette","27251","09 81 66 04 86","urna@malesuadaid.net","pro","605336924-00002",6),
       (7,"Mcintosh","Desirae","8227 Risus Rue","Jaunpur","84392","08 32 00 38 60","nulla.ante@sed.co.uk","par",NULL,7),
       (8,"Nicholson","Zeus","3193 Aliquam Ave","Tubeke Tubize","38742","02 90 59 95 10","Sed.eget@lacusUt.net","pro","811978493-00005",8),
       (9,"Brock","Kaseem","Appartement 615-1490 Integer Av.","Fleurus","85736","02 87 17 50 58","Donec.sollicitudin.adipiscing@vulputaterisusa.com","pro","553039645-00005",9),
       (10,"Whitfield","Yoshio","577-7165 Cras Route","Geertruidenberg","40939","04 70 87 00 53","vel.mauris.Integer@gravidamauris.net","par",NULL,10);
INSERT IGNORE 
INTO client (client_id,client_nom,client_prenom,client_rue,client_ville,client_codepo,client_telephone,client_mail,client_type,client_siret,client_commerciaux_id)
VALUES (11,"Maldonado","Barbara","556-6930 Amet, Route","Sauvenière","85217","09 38 68 12 56","facilisis.facilisis@nuncestmollis.edu","pro","708808084-00006",1),
       (12,"Raymond","Dean","7882 Luctus Rue","Lonquimay","45354","07 97 96 55 59","cursus@odioEtiam.edu","pro","263853525-00008",2),
       (13,"Mcdonald","Colt","Appartement 911-1540 Augue, Av.","Flint","84769","03 57 86 21 66","quis.accumsan.convallis@nasceturridiculusmus.edu","par",NULL,3),
       (14,"Woodward","William","CP 394, 7305 Risus. Route","Lunel","68624","05 90 65 53 06","posuere.at@sit.net","par",NULL,4),
       (15,"Holder","Lareina","Appartement 473-4026 Est, Impasse","Koekelberg","62629","02 39 94 72 66","velit@nonummyac.co.uk","pro","051830867-00001",5),
       (16,"Gilmore","Len","226-6532 Convallis Avenue","Bhilai","62534","04 47 43 48 14","quis.diam.luctus@lectus.com","par",NULL,6),
       (17,"Stanley","Merritt","413-5832 Curae; Chemin","Muridke","51840","02 61 19 52 74","Cras@sagittisDuis.org","par",NULL,7),
       (18,"Sloan","Cain","3831 Eu Route","Portland","29059","05 76 83 78 57","arcu@egestas.net","par",NULL,8),
       (19,"Davidson","Rana","Appartement 913-1930 Senectus Av.","Camaragibe","38402","07 56 06 71 04","faucibus.Morbi@Quisque.com","par",NULL,9),
       (20,"Oneill","Nasim","9969 Aliquet Route","Coevorden","40616","06 13 28 09 27","urna.justo@at.co.uk","par","307846188-00000",10);
INSERT IGNORE 
INTO client (client_id,client_nom,client_prenom,client_rue,client_ville,client_codepo,client_telephone,client_mail,client_type,client_siret,client_commerciaux_id)
VALUES (21,"Kelley","Kelsie","Appartement 760-3173 Ullamcorper. Chemin","Sioux City","87015","04 15 43 21 10","sociis@egestas.com","par",NULL,1),
       (22,"Faulkner","Megan","Appartement 691-6161 Non Rue","Jacksonville","94276","08 79 89 35 23","ac@erosnectellus.co.uk","pro","030486161-00000",2),
       (23,"Cruz","Harlan","590-7854 Scelerisque Ave","Prenzlau","63124","02 73 87 89 86","a.felis.ullamcorper@Fuscediam.co.uk","pro","814796157-00000",3),
       (24,"Espinoza","Anthony","175-1542 Curabitur Avenue","Yellowknife","53786","03 39 83 21 39","ut.quam@ridiculusmusAenean.edu","pro","466494945-00002",4),
       (25,"Dickson","Rosalyn","7975 Mauris Av.","Darwin","62818","03 45 04 22 82","nunc@enim.org","par",NULL,5),
       (26,"Simon","Uriah","Appartement 699-5400 Proin Impasse","Saint-Léger","06939","05 88 17 45 96","volutpat.nunc.sit@in.net","pro","848415915-00000",6),
       (27,"Galloway","Colin","Appartement 328-4775 Donec Route","Castelvecchio Calvisio","30521","05 97 17 24 17","ante@nequevitae.org","par",NULL,7),
       (28,"Gomez","Keaton","Appartement 277-2174 Aenean Route","Redwater","67174","09 34 86 65 54","volutpat@erat.net","pro","672184264-00006",8),
       (29,"Roach","Illiana","CP 502, 9629 Ultricies Av.","Pettineo","51027","07 33 45 03 46","convallis.est@magnamalesuada.net","pro","881935886-00005",9),
       (30,"Hyde","Simon","CP 476, 8686 Aliquam Rd.","Buckley","07660","08 81 75 69 65","id.enim@odio.edu","pro","581207537-00001",10);

-- TABLE COMMERCIAUX 

INSERT IGNORE 
INTO commerciaux (commerciaux_id,commerciaux_nom,commerciaux_prenom,commerciaux_tel,commerciaux_mail)
VALUES (1,"Dumont","Rosalie","08 05 47 58 81","dictum@NullamnislMaecenas.net"),
       (2,"Guerin","Amélie","06 23 11 82 05","Cras.eu@diamnunc.edu"),
       (3,"Denis","Martin","02 67 41 64 98","Quisque.nonummy.ipsum@fringilla.ca"),
       (4,"Vasseur","Mohamed","08 56 22 35 22","pede.Praesent.eu@faucibusorciluctus.edu"),
       (5,"Marty","Sara","08 26 94 72 26","arcu.et.pede@non.com"),
       (6,"Dufour","Lilian","01 57 13 13 19","ac.mattis@malesuada.org"),
       (7,"Durand","Corentin","07 97 98 17 72","Morbi@dictum.co.uk"),
       (8,"Clement","Lutécia","07 06 48 04 45","ac@tinciduntcongue.net"),
       (9,"Philippe","Mehdi","04 04 93 57 07","eget@urnaNunc.com"),
       (10,"Dupuis","Valentine","06 72 14 95 83","lectus@egetmollislectus.com");

-- TABLE RUBRIQUE 

INSERT IGNORE 
INTO rubrique (rubrique_id,rubrique_nom,rubrique_desc)
VALUES (1,'batterie','ça tape et ça cogne'),
       (2,'cables','de la connection'),
       (3,'cases','des rangements et des rangements'),
       (4,'guitares','ça gratte'),
       (5,'studio','pour ceux qui chantes ou pas...'),
       (6,'claviers','pia pia piano'),
       (7,'instruments à vent','ça va souffler'),
       (8,'sono',"c'est qui le DJ");


--  TABLE SOUSRUBRIQUE

      
INSERT IGNORE 
INTO sous_rubrique (sousrub_id,sousrub_nom,sousrub_desc,sousrub_rubrique_id) 
VALUES (1,'standard','le grand classique',1),
       (2,'rock','indémodable',1),
       (3,'fusion','ça déchire',1),
       (4,'jazz','le virtuose',1),
       (5,'junior','le pitchoune',1),
       (6,'débutant','il faut bien commencer',1),
       (7,'compacte','y à plus de place',1),
       (8,'jack court','longueurs < à un mètre',2),
       (9,'jack','longueurs > à un mètre',2),
       (10,'cable micro','connectic multi pin pour micros',2),
       (11,'midi','micros et sonos',2),
       (12,'mixte','adaptateur et double connectics',2),
       (13,'housse','housses souples',3),
       (14,'rigide','plastic ou bois delux',3),
       (15,'basse electrique','du lourd',4),
       (16,'basse acoustique','pour les unpluged',4),
       (17,'étuis rigides','étuis en bois ou plastiqu pour sonos',3),
       (18,'guitare électrique','les guitares électrique de toutes marques',4),
       (19,'guitare acoustique','les guitares acoustiques de toutes marques',4),
       (20,'guitare classique','les guitares classiques de toutes marques',4),
       (21,'ampli guitare','sonorisation quitare',8),
       (22,'ampli basse','sonorisation basse',8),
       (23,'micro','prise de son',5),
       (24,'mixage','table de mixage',5);



-- TABLE PRODUIT
-- //FIXME controle des sous rubriques
INSERT IGNORE 
INTO `Produit` (produit_id,produit_nom_court,produit_nom,produit_photo,produit_qtite,produit_qtite_ale,produit_prix_HT,produit_sousrub_id)
VALUES         (1,'C40BL','Yamaha - Guitare Classique C40BL Noir','../images/default_guit.jpg',5,2,130,20),
               (2,'SG2019','GIBSON SG Standard Tribute 2019 - vintage cherry satin','../images/default_guit.jpg',6,2,856,18),
               (3,'AE44II','APPLAUSE AE44II Mid Cutaway - natural','../images/default_guit.jpg',3,2,270,19),
               (4,'AQUI1854','AQUILINA Shelby 4 Custom (#01854) - natural','../images/default_guit.jpg',3,2,3200,15),
               (5,'CORTSJB6FX','CORT SJB6FX Fretless NAT +bag - natural','../images/default_guit.jpg',5,2,740,16),
               (6,'FLPROU2','Flyht Pro Case Uni­versal 2 / 120cm','../images/default_guit.jpg',3,2,200,14),
               (7,'AS50DC','MARSHALL AS50DC Acoustic - Racing Green','../images/default_guit.jpg',2,2,290,21),
               (8,'FENDRS800','FENDER Rumble Stage 800','../images/default_guit.jpg',8,2,800,22),
               (9,'BEYTGV35D','BEYERDYNAMIC TG V35d s Mic Set Pack micro avec pied','../images/default_guit.jpg',4,2,60,23),
               (10,'MIXSQ7','ALLEN AND HEATH SQ-7 table de mixage','../images/default_guit.jpg',2,2,4000,24),
               (11,'PEXL725PC','PEARLEXL725PC-248 black Smoke','../images/default_guit.jpg',2,2,500,1),
               (12,'PMMCR22','Pearl Master maple complete Rock 22" satin natural burst','../images/default_guit.jpg',2,2,1200,2),
               (13,'PEF20-B','Pearl Export fusion 20" High Voltage Blue','../images/default_guit.jpg',2,2,700,3),
               (14,'PDMP4FJ18-Y','Pearl DMP 4F JAZZ 18" solid yellow','../images/default_guit.jpg',2,2,900,4),
               (15,'PRJ18-R','Pearl roadshow junior 18" red wine','../images/default_guit.jpg',2,2,390,5),
               (16,'GBE-BASS','GATOR GBE-BASS','../images/default_guit.jpg',2,2,23,13),
               (17,'GBE-GUIT','GATOR GBE-GUIT','../images/default_guit.jpg',3,2,20,13),
               (18,'MR500C','IBANEZ MR500C Road Tour Electric Guitar Case','../images/default_guit.jpg',3,2,150,17),
               (19,'PRJ18-B','Pearl roadshow junior 18 pouces jet black','../images/default_guit.jpg',2,2,367,6),
               (20,'EM-54T','Pearl Pearl e/Merge e/Traditional','../images/default_guit.jpg',2,2,3000,7),
               (21,'PCF-DL10','Ebs Câble de patch guitare 10 cm','../images/default_guit.jpg',2,2,3,8),
               (22,'EB-6048','Ernie Ball Cables instrument classic jack/jack 3m noir','../images/default_guit.jpg',5,2,17,9),
               (23,'CCM20FM','Cordial Câble micro XLR 20 m','../images/default_guit.jpg',5,2,18,10);
        

-- //TABLE APPRO

INSERT IGNORE 
INTO appro (appro_id,appro_fournisseur_id,appro_produit_id,appro_prix_achat,appro_date_livr, appro_qtite)
VALUES (1,5,3,200,'2018-05-23',2),
       (2,6,4,2800,'2018-06-26',2),
       (3,7,5,600,'2018-07-09',2),
       (4,8,6,100,'2018-08-22',2),
       (5,9,7,200,'2018-09-09',2);

-- TABLE FOURNISSEUR
INSERT IGNORE 
INTO fournisseur (fournisseur_id,fournisseur_nom,fournisseur_rue,fournisseur_cp,fournisseur_ville,fournisseur_tel,fournisseur_nom_contact,fournisseur_prenom_contact) 
VALUES           (1,"Amet Orci PC","Appartement 402-3526 Massa Rue","88835","Cinisi","09 65 12 45 03","Riddle","Orlando"),
                 (2,"Integer Vulputate Risus Consulting","4509 Libero Chemin","91003","Mazenzele","07 12 88 74 07","Harper","Edan"),
                 (3,"Maecenas Malesuada Inc.","Appartement 975-1252 Odio. Impasse","55361","Washington","07 09 79 41 97","Dale","Lucius"),
                 (4,"Dictum Mi Ac Inc.","Appartement 245-2355 Auctor, Route","21846","Vandoeuvre-lès-Nancy","09 04 52 00 84","Holden","Dorian"),
                 (5,"Eleifend Vitae Industries","Appartement 536-5751 Neque Rue","12959","San Nicolás","08 04 60 78 18","Herman","Aurora"),
                 (6,"Nunc Quis Arcu Corporation","491-9263 Aenean Avenue","56602","Werder","08 30 54 07 77","Cruz","Alvin"),
                 (7,"A Sollicitudin Consulting","Appartement 142-1903 Libero Rue","23030","White Rock","02 08 93 32 17","Santana","Carissa"),
                 (8,"Pede Suspendisse Dui LLC","5319 Vel Impasse","33597","Conca Casale","04 94 93 11 70","Weeks","Imogene"),
                 (9,"Ac LLP","985-4900 Nunc Rd.","81603","Acireale","03 56 76 73 66","Greene","Kaden"),
                 (10,"Nunc In Associates","CP 707, 7848 Aliquam Rue","23124","Piancastagnaio","02 97 66 61 89","Mclaughlin","Porter"),
                 (11,"Ante Maecenas Mi Company","CP 384, 6634 Consequat Ave","61451","Silvan","03 76 85 27 29","Potter","Pamela"),
                 (12,"Sodales Elit Associates","CP 258, 5538 Id, Chemin","92254","Duncan","09 50 74 79 06","Ramos","Wyatt"),
                 (13,"Ligula LLC","410-7821 Fermentum Avenue","53877","Rebecq","05 20 62 95 62","Melton","Kirby"),
                 (14,"Enim Incorporated","CP 335, 9413 Tempor Chemin","46699","Chittoor","02 49 15 14 43","Paul","Rae"),
                 (15,"Nisi Sem Foundation","8400 Euismod Av.","40680","Harelbeke","03 17 66 20 36","Dudley","Baxter"),
                 (16,"Ut Consulting","2585 Facilisis. Rd.","67963","Bihar Sharif","05 70 60 78 37","Pittman","Rigel"),
                 (17,"Sed Pharetra Institute","7928 Neque Ave","58634","Camerino","07 65 17 44 66","Wynn","Cameron"),
                 (18,"Consequat Auctor Consulting","321-7248 Sed Rd.","76839","Rutland","06 28 82 66 31","Stanton","Garrett"),
                 (19,"Vestibulum Lorem Institute","CP 867, 668 Ornare. Route","85913","Vance","08 50 01 02 15","Burris","Raphael"),
                 (20,"In Tincidunt Limited","877-7388 Ornare Av.","32377","LaSalle","05 61 82 84 18","Best","Forrest");





--   COMMANDE
-- //FIXME verifier cohérence des données
INSERT IGNORE 
INTO `commande`(commande_id,commande_date,commande_reduc,commande_prix_tot,commande_date_reglem,commande_date_facture,commande_livraison_rue,commande_livraison_ville,
commande_livraison_codepo,commande_facturation_rue,commande_facturation_ville ,commande_facturation_codepo,commande_etat,commande_client_id)
VALUES (1,'2018-01-15',0.10,4270,'2019-01-15','2019-01-15','10 rue des corbak','AMIENS','80000','10 rue des corbak','AMIENS','80000','en cours',10),
       (2,'2018-03-18',0.20,6400,'2019-01-15','2019-01-15',"7882 Luctus Rue","Lonquimay","45354","7882 Luctus Rue","Lonquimay","45354",'soldée',12),
       (3,'2018-05-21',0.30,2200,'','2018-10-15',"CP 394, 7305 Risus. Route","Lunel","68624","CP 394, 7305 Risus. Route","Lunel","68624",'en préparation',14),
       (4,'2018-07-24',1,800,'2018-11-15','2018-10-15',"226-6532 Convallis Avenue","Bhilai","62534","226-6532 Convallis Avenue","Bhilai","62534",'soldée',16),
       (5,'2018-09-27',0.50,1450,'','',"3831 Eu Route","Portland","29059","3831 Eu Route","Portland","29059",'en préparation',18),
       (6,'2018-11-30',0.60,4800,'2018-12-15','2018-12-15',"9969 Aliquet Route","Coevorden","40616","9969 Aliquet Route","Coevorden","40616",'en préparation',20),
       (7,'2018-12-22',0.70,420,'2019-01-15','2019-01-15',"Appartement 691-6161 Non Rue","Jacksonville","94276","Appartement 691-6161 Non Rue","Jacksonville","94276",'soldée',22);

-- TABLE  SE COMPOSE DE 

INSERT IGNORE 
INTO `secomposede`(secomposede_id,secomposede_commande_id,secomposede_produit_id,secomposede_qtite_commande,secomposede_prix_vente)
VALUES (1,1,3,1,270),
       (2,2,4,2,3200),
       (3,3,5,3,740),
       (4,4,6,4,200),
       (5,5,7,5,290),
       (6,6,8,6,800),
       (7,7,9,7,60),
       (8,1,10,1,4000);


--  TABLE LIVRAISON
INSERT IGNORE INTO `livraison`(livraison_id,livraison_num_bon,livraison_date,livraison_commande_id,livraison_etat)
VALUES (1,1,'2018-10-11',1,'en cours'),
       (2,2,'2018-01-15',2,'livrée'),
       (3,3,'2018-10-15',2,'en préparation');
--  TABLE CONTIENT
INSERT INTO contient (contient_livraison_id,contient_produit_id,contient_qtite_liv)
VALUES (1,3,1),
       (2,4,1),
       (3,4,1); 