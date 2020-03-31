--------------------------------------------------------
-- #Creation des tables de la base de donnees du projet 
-- #et des relations liees aux entitees 
--------------------------------------------------------
CREATE TABLE Administrateur (
    UtilisateurID int NOT NULL, 
    PRIMARY KEY (UtilisateurID)
);

CREATE TABLE Client (
    UtilisateurID int NOT NULL,
     adresse varchar(255), 
     PRIMARY KEY (UtilisateurID)
);

CREATE TABLE Commande (
    ID SERIAL NOT NULL, 
    ClientUtilisateurID int NOT NULL, 
    LivreurUtilisateurID int NOT NULL, 
    statut_commande varchar(100), 
    statut_livraison varchar(100), 
    date_commande date, 
    date_creation date, 
    date_modification date,
    moyenPaiement varchar(100), 
    PRIMARY KEY (ID)
);

CREATE TABLE Detail_Commande (
    CommandeID int NOT NULL, 
    PlatID int NOT NULL, 
    quantite int, 
    "date" date, 
    PRIMARY KEY (CommandeID, PlatID)
);

CREATE TABLE Detail_Plat (
    LivreurUtilisateurID int NOT NULL, 
    PlatID int NOT NULL, 
    quantite int, 
    "date" date, 
    PRIMARY KEY (LivreurUtilisateurID, PlatID)
);

CREATE TABLE Livreur (
    UtilisateurID int NOT NULL, 
    statut varchar(100), 
    position varchar(100), 
    PRIMARY KEY (UtilisateurID)
);

CREATE TABLE Plat (
    ID SERIAL NOT NULL, 
    AdministrateurUtilisateurID int NOT NULL,
    nom varchar(255), 
    description varchar(255), 
    ingredient varchar(255), 
    type varchar(100), 
    prix numeric(5, 0), 
    PRIMARY KEY (ID)
);

CREATE TABLE Plat_Du_Jour (
    ID SERIAL NOT NULL, 
    PlatID int NOT NULL, 
    "date" date, 
    PRIMARY KEY (ID)
);

CREATE TABLE Utilisateur (
    ID SERIAL NOT NULL, 
    prenom varchar(255), 
    nom varchar(255), 
    login varchar(255), 
    motDePasse varchar(255), 
    PRIMARY KEY (ID)
);

ALTER TABLE Client 
    ADD CONSTRAINT FKClient670715 FOREIGN KEY (UtilisateurID) 
    REFERENCES Utilisateur (ID);

ALTER TABLE Livreur 
    ADD CONSTRAINT FKLivreur884845 FOREIGN KEY (UtilisateurID) 
    REFERENCES Utilisateur (ID);

ALTER TABLE Administrateur 
    ADD CONSTRAINT FKAdministra747294 FOREIGN KEY (UtilisateurID) 
    REFERENCES Utilisateur (ID);

ALTER TABLE Detail_Plat 
    ADD CONSTRAINT FKDetail_Pla304205 FOREIGN KEY (PlatID) 
    REFERENCES Plat (ID);

ALTER TABLE Detail_Commande 
    ADD CONSTRAINT FKDetail_Com122119 FOREIGN KEY (PlatID) 
    REFERENCES Plat (ID);

ALTER TABLE Plat 
    ADD CONSTRAINT ajouter FOREIGN KEY (AdministrateurUtilisateurID) 
    REFERENCES Administrateur (UtilisateurID);

ALTER TABLE Detail_Commande 
    ADD CONSTRAINT composer FOREIGN KEY (CommandeID) 
    REFERENCES Commande (ID);

ALTER TABLE Commande 
    ADD CONSTRAINT creer FOREIGN KEY (ClientUtilisateurID) 
    REFERENCES Client (UtilisateurID);

ALTER TABLE Plat_Du_Jour 
    ADD CONSTRAINT est FOREIGN KEY (PlatID) 
    REFERENCES Plat (ID);

ALTER TABLE Commande 
    ADD CONSTRAINT livrer FOREIGN KEY (LivreurUtilisateurID) 
    REFERENCES Livreur (UtilisateurID);

ALTER TABLE Detail_Plat 
    ADD CONSTRAINT recevoir FOREIGN KEY (LivreurUtilisateurID) 
    REFERENCES Livreur (UtilisateurID);
