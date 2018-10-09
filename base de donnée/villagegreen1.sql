#--------------------------------------------------------------
#       Village Green. OK
#--------------------------------------------------------------

DROP DATABASE villagegreen;

CREATE DATABASE villagegreen;

#------------------------------------------------------------
# Table: rubrique  OK
#------------------------------------------------------------
USE villagegreen;
CREATE TABLE rubrique(
        rubrique_id   Int  Auto_increment  NOT NULL primary key,
        rubrique_nom  Varchar (255) NOT NULL,
        rubrique_desc Varchar (500) NOT NULL
        );


#------------------------------------------------------------
# Table: sous_rubrique  OK
#------------------------------------------------------------

CREATE TABLE sous_rubrique(
        sousrub_id   Int  Auto_increment  NOT NULL PRIMARY KEY,
        sousrub_nom  Varchar (120) NOT NULL ,
        sousrub_desc Varchar (500) NOT NULL ,
        sousrub_rubrique_id  Int NOT null,
        FOREIGN KEY (sousrub_rubrique_id) REFERENCES rubrique(rubrique_id)
        );


#------------------------------------------------------------
# Table: Produit  OK
#------------------------------------------------------------

CREATE TABLE Produit(
        produit_id            Int  Auto_increment  NOT NULL PRIMARY KEY,
        produit_nomcourt      Char (50) NOT NULL ,
        produit_nom           Varchar (255) NOT NULL ,
        produit_photo         Varchar (255) NOT NULL ,
        produit_qtite         Int NOT NULL ,
        produit_prixHT        DECIMAL(7,2) NOT NULL ,
        produit_qtiteale      Int NOT NULL ,
        produit_sousrub_id    Int NOT NULL,
        FOREIGN KEY (produit_sousrub_id) REFERENCES sous_rubrique(sousrub_id)
	);


#------------------------------------------------------------
# Table: fournisseur OK
#------------------------------------------------------------

CREATE TABLE fournisseur(
        fournisseur_id            Int  Auto_increment  NOT NULL PRIMARY KEY,
        fournisseur_nom           Varchar (50) NOT NULL ,
        fournisseur_rue           Varchar (50) NOT NULL ,
        fournisseur_cp            Int NOT NULL ,
        fournisseur_ville         Varchar (50) NOT NULL ,
        fournisseur_tel           Char (10) NOT NULL ,
        fournisseur_nomcontact    Varchar (50) NOT NULL ,
        fournisseur_prenomcontact Varchar (50) NOT NULL
);





#------------------------------------------------------------
# Table: client OK
#------------------------------------------------------------

CREATE TABLE client(
        client_id               Int  Auto_increment  NOT NULL PRIMARY KEY,
        client_nom              Varchar (50) NOT NULL ,
        client_prenom           VARCHAR (50) NOT NULL ,
        client_rue              Varchar (50) NOT NULL ,
        client_ville            Varchar (50) NOT NULL ,
        client_codepo           CHAR(5) NOT NULL ,
        client_telephone        CHAR (14) NOT NULL ,
        client_mail             Varchar (50) NOT NULL ,        
        client_type             VARCHAR (3) NOT NULL,
        client_siret            CHAR (15),
        client_commerciaux_id   INT 
);


#------------------------------------------------------------
# Table: commerciaux  OK
#------------------------------------------------------------

CREATE TABLE commerciaux(
        commerciaux_id     Int  Auto_increment  NOT NULL PRIMARY KEY,
        commerciaux_nom    Varchar (50) NOT NULL ,
        commerciaux_prenom Varchar (50) NOT NULL ,
        commerciaux_tel    CHAR (14) NOT NULL,
        commerciaux_mail   VARCHAR (50)
);


#------------------------------------------------------------
# Table: commande  OK
-- //FIXME champ etat et date de réglement dans données test
#------------------------------------------------------------

CREATE TABLE commande(
        commande_id                           INT Auto_increment NOT NULL PRIMARY KEY,
        commande_date                         Date NOT NULL ,
        commande_reduc                        DECIMAL(3,2) NOT NULL ,
        commande_prixtot                      DECIMAL(7,2) NOT NULL ,
        commande_datereglem                   Date ,
        commande_date_facture                 Date NOT NULL ,       
        commande_livraison_rue                Varchar (50) NOT NULL ,
        commande_livraison_ville              Varchar (50) NOT NULL ,
        commande_livraison_codepo             CHAR(5) NOT NULL ,
        commande_facturation_rue              Varchar (50) NOT NULL ,
        commande_facturation_ville            Varchar (50) NOT NULL ,
        commande_facturation_codepo           CHAR(5) NOT NULL ,
        commande_etat                         VARCHAR(10),
        commande_client_id                    Int NOT NULL,
        FOREIGN KEY (commande_client_id) REFERENCES client(client_id)
);


#------------------------------------------------------------
# Table: livraison OK
#------------------------------------------------------------

CREATE TABLE livraison(
        livraison_id            Int  Auto_increment  NOT NULL PRIMARY KEY ,
        livraison_num_bon       INT(11) NOT NULL ,
        livraison_date          Date NOT NULL ,
        livraison_commande_id   INT NOT NULL,
        FOREIGN KEY (livraison_commande_id) REFERENCES commande(commande_id)
);


#------------------------------------------------------------
# Table: appro OK
#------------------------------------------------------------

CREATE TABLE appro(
        appro_fournisseur_id  Int NOT NULL ,
        appro_produit_id      Int NOT NULL ,
        appro_prixachat       DECIMAL(7,2) NOT NULL ,
        appro_datecom         Date NOT NULL ,
        appro_datelivr        Date NOT NULL ,
        appro_qtite           Int NOT NULL,
        appro_id              Int NOT NULL PRIMARY KEY,
        -- PRIMARY KEY (appro_fournisseur_id,appro_produit_id),
        FOREIGN KEY (appro_fournisseur_id) REFERENCES fournisseur(fournisseur_id),
        FOREIGN KEY (appro_produit_id) REFERENCES produit(produit_id)
);


#------------------------------------------------------------
# Table: se compose de  OK
#------------------------------------------------------------

CREATE TABLE secomposede(
        secomposede_id            INT NOT NULL PRIMARY KEY,
        secomposede_commande_id   INT NOT NULL,
        secomposede_produit_id    INT NOT NULL,
        secomposede_qtitecommande INT NOT NULL,
        secomposede_prixvente     DECIMAL(7,2)NOT NULL,
        
        FOREIGN KEY (secomposede_commande_id) REFERENCES commande(commande_id),
        FOREIGN KEY (secomposede_produit_id)  REFERENCES produit(produit_id)
);

#------------------------------------------------------------
# Table: contient  OK
#------------------------------------------------------------

CREATE TABLE contient (
        contient_livraison_id INT,
        contient_produit_id INT,
        contient_qteliv INT,
        PRIMARY KEY (contient_livraison_id,contient_produit_id),
        FOREIGN KEY (contient_livraison_id) REFERENCES livraison(livraison_id),
        FOREIGN KEY (contient_produit_id) REFERENCES produit (produit_id)
);

#------------------------------------------------------------
# Table: suivi par  
#------------------------------------------------------------

CREATE TABLE suivipar (
        suivipar_client_id INT,
        suivipar_commerciaux_id INT,
        PRIMARY KEY (suivipar_client_id,suivipar_commerciaux_id),
        FOREIGN KEY (suivipar_client_id) REFERENCES client (client_id),
        FOREIGN KEY (suivipar_commerciaux_id) REFERENCES commerciaux (commerciaux_id)
); 

