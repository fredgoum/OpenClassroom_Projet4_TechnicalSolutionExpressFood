----------------------------------------------------------------
-- #Suppression des tables de la base de donnees du projet
-- #et des relations liees aux entitees 
----------------------------------------------------------------
ALTER TABLE Client DROP CONSTRAINT FKClient670715;
ALTER TABLE Livreur DROP CONSTRAINT FKLivreur884845;
ALTER TABLE Administrateur DROP CONSTRAINT FKAdministra747294;
ALTER TABLE Detail_Plat DROP CONSTRAINT FKDetail_Pla304205;
ALTER TABLE Detail_Commande DROP CONSTRAINT FKDetail_Com122119;
ALTER TABLE Plat DROP CONSTRAINT ajouter;
ALTER TABLE Detail_Commande DROP CONSTRAINT composer;
ALTER TABLE Commande DROP CONSTRAINT creer;
ALTER TABLE Plat_Du_Jour DROP CONSTRAINT est;
ALTER TABLE Commande DROP CONSTRAINT livrer;
ALTER TABLE Detail_Plat DROP CONSTRAINT recevoir;
DROP TABLE IF EXISTS Administrateur CASCADE;
DROP TABLE IF EXISTS Client CASCADE;
DROP TABLE IF EXISTS Commande CASCADE;
DROP TABLE IF EXISTS Detail_Commande CASCADE;
DROP TABLE IF EXISTS Detail_Plat CASCADE;
DROP TABLE IF EXISTS Livreur CASCADE;
DROP TABLE IF EXISTS Plat CASCADE;
DROP TABLE IF EXISTS Plat_Du_Jour CASCADE;
DROP TABLE IF EXISTS Utilisateur CASCADE;
