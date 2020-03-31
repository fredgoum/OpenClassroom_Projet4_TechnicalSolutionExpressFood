-----------------------------------------------------------
-- #Creation des occurrences des tables de la base de donnees
-----------------------------------------------------------
-----------------------------------------------------------
-- Debut de la transaction sur les donnees de la base
-----------------------------------------------------------
Begin transaction;

-- Table Utilisateur
INSERT INTO Utilisateur 
	(ID, prenom, nom, login, motDePasse)
VALUES 
	(1, 'Asrid', 'Lan', 'asrid@gmail.com', 'hdskjlmdksflm652'),
    (2, 'Julien', 'Xan', 'xan@gmail.com', 'jdsfklmfDLFG54'),
    (3, 'Viviane', 'Ande', 'ande@gmail.com', 'MLQKSFLKMld'),
    (4, 'Ascid', 'Larnar', 'lanrnar@gmail.com', 'fskjdmlg;5512'),
    (5, 'Ousmo', 'Savane', 'savane@gmail.com', 'hfnlk,l6541'),
    (6, 'Lebron', 'Merri', 'merri@gmail.com', 'fzdslnkm,45132'),
    (7, 'Karine', 'Douet', 'douet@gmail.com', 'GEZAFIUJDLSKNM?532'),
    (8, 'Lanne', 'Vio', 'vio@gmail.com', 'nlkqf,sv4321'),
    (9, 'Darme', 'Utio', 'utio@gmail.com', 'zflnkd,s:c'),
    (10, 'Gard', 'Tuiza', 'tuiza@gmail.com', 'fzlnkmd,v645132'),
    (11, 'Anne', 'Log', 'log@gmail.com', 'fjzlnk;!sdv:412'),
    (12, 'Xavier', 'Dubois', 'dubois@gmail.com', 'igyfzonkdm,l4651'),
    (13, 'Yan', 'Lan', 'lan@gmail.com', 'znkmv,ds!:421'),
    (14, 'Goudo', 'Rar', 'rar@gmail.com', 'ifzNLKM?C456123'),
    (15, 'Tanguy', 'Renard', 'renard@gmail.com', 'FZJLNKV?D.S§/423'),
    (16, 'Luis', 'Messi', 'messi@gmail.com', 'UFHZONLKDC412'),
    (17, 'Cristiano', 'Ronaldo', 'renaldo@gmail.com', 'hkjlsdfq;,5312'),
    (18, 'Reberto', 'Philippe', 'philippe@gmail.com', 'jmkl;bf,msl45'),
    (19, 'Ousmane', 'Dembele', 'dembele@gmail.com', 'lnvsk,,mc45'),
    (20, 'Lionel', 'Messi', 'lionel@gmail.com', 'hofkm?LQ/C54312'),
    (21, 'Yao', 'Carl', 'carl@gmail.com', 'bnkem,lqd?LQ/C54312'),
    (22, 'Patrik', 'Amar', 'amar@gmail.com', 'hofkmvnkd,:?LQ/C54312'),
    (23, 'Moussa', 'Sow', 'sow@gmail.com', 'hofkm?nkdfv/C54312'),
    (24, 'Didier', 'Rest', 'rest@gmail.com', 'vknf?LQ/C54312'),
    (25, 'Camen', 'Sama', 'sama@gmail.com', 'nlfkd?LQ/fv'),
    (26, 'Angele', 'Li', 'li@gmail.com', 'hofkm?LQ/oqznlksv'),
    (27, 'Karine', 'Levier', 'levier@gmail.com', 'ufsjk?LQ/,mvsqkdw'),
    (28, 'Coralie', 'Bruth', 'bruth@gmail.com', 'hofkm?LQ/lqjznkvs'),
    (29, 'Rice', 'Tiam', 'Tiam@gmail.com', 'ljvqnks?LQ/C54312'),
    (30, 'Emmanuel', 'Kan', 'kan@gmail.com', 'hofkm?LQ/ljqvs')
;

-- Table Client
INSERT INTO Client 
    (UtilisateurID, adresse)
VALUES
    (1, '15 Boulevard du Canton 95000 Cergy'),
    (2, '1 Rue de Lavoisier 75001 Paris'),
    (3, '5 Avenue des Rives 29200 Brest'),
    (4, '45 Boulevard de la Dame 76000 Rouen'),
    (5, '12 Rue de la Porte 91000 Orsay'),
    (6, '14 Rue de Lavoisier 75002 Paris'),
    (7, '4 Allee de la Maison 95000 Cergy'),
    (8, '10 Rue Lakanal 49000 Angers'),
    (9, '65 Boulevard de Pont 49070 Beaucouzé'),
    (10, '15 Rue du Richelieu 75002 Paris')
;

-- Table Livreur
INSERT INTO Livreur
    (UtilisateurID, statut, position)
VALUES
    (11, 'libre', '[-44.857891],[11.282178]'),
    (12, 'libre', '[-24.857891],[141.282185]'),
    (13, 'en cours de livraison', '[-4.857891],[122.282161]'),
    (14, 'libre', '[-24.857892],[141.2821411] '),
    (15, 'en cours de livraison', '[-24.857891],[145.282185]'),
    (16, 'libre', '[-24.857891],[158.282147]'),
    (17, 'libre', '[-02.857891],[146.284585]'),
    (18, 'en cours de livraison', '[-14.857891],[100.282169]'),
    (19, 'libre', '[-14.857891],[141.282145] '),
    (20, 'en cours de livraison', '[-45.857891],[145.282186]')
;

-- Table Administrateur
INSERT INTO Administrateur 
    (UtilisateurID)
VALUES
    (21),
    (22),
    (23),
    (24),
    (25),
    (26),
    (27),
    (28),
    (29),
    (30)
;

-- Table Plat
INSERT INTO Plat
    (ID, AdministrateurUtilisateurID, nom, description, ingredient, type, prix)
VALUES
    (1, 21, 'Moules à la crème', 'De délicieuses moules accompagnées de une sauce savoureuse !', 'moules, oignon, beurre, vin blanc, persil, crème fraîche, sel, poivre', 'Plat', 50.00),
    (2, 22, 'Couscous royal', 'La recette traditionnelle à réaliser de toute urgence !', 'cuisses de poulet, navets, carottes, collier agneau, pois chiches, merguez, semoule de blé dur, oignons,  concentré de tomates, céleri, huile olive, ail, harissa, sel', 'plat', 45.99),
    (3, 23, 'Magrets de canard à la poêle', 'Idéal pour un déjeuner ou un dîner festif !', 'magrets de canard, sel, poivre', 'Plat', 15.99),
    (4, 24, 'Blanquette de veau facile', 'Une belle recette traditionnelle qui fait toujours plaisir !', 'blanquette de veau, carottes, vin blanc sec, crème fraîche, oignon, champignons de Paris, citron, farine, jaune doeuf, clous de girofle', 'Plat', 34.99),
    (5, 25, 'Côte de boeuf au four', 'C est la recette des amateurs de viande !', 'côte de boeuf, beurre, fleur de sel, poivre', 'Plat', 19.99),
    (6, 26, 'Gigot agneau au thym', 'La recette du traditionnel gigot qui nous régale toujours autant !', 'gigot agneau, huile olive, thym, gousses ail, beurre, sel, poivre', 'Plat', 29.99),
    (7, 27, 'Tomates farcies au boeuf', 'Une délicieuse recette familiale !', 'tomates, boeuf haché, oeuf, échalotes, huile olive, farine, coulis de tomates, ail, persil, sucre, sel, herbes de Provence, poivre', 'Plat', 18.45),
    (8, 28, 'Tartiflette traditionnelle', 'Un vrai plat montagnard comme on les aime !', 'pommes de terre à chair ferme, reblochon, oignons, lardons fumés, crème fraîche, vin blanc sec, poivre', 'Plat', 24.99),
    (9, 29, 'crêpes bretonnes', 'crêpes bretonnes au caramel au beurre salé', 'farine, maïzena, lait, oeufs, soupe de rhum, café de levure alsacienne, sauce salidou (caramel au beurre salé), sel', 'Dessert', 10.99),
    (10, 30, 'Tarte', 'Tarte normande aux abricots', 'pâte sablée, abricots, sucre en poudre, amandes, oeuf, crème liquide', 'Dessert', 5.99)
;

-- Table Commande
INSERT INTO Commande
    (ID, ClientUtilisateurID, LivreurUtilisateurID, statut_commande, statut_livraison, date_commande, date_creation, date_modification, moyenPaiement)
VALUES
    (1, 1, 11, 'commande validée', 'commande livrée', '2020-04-01', '2020-03-01', '2020-04-01', 'en ligne par CB'),
    (2, 2, 12, 'commande non validée', 'commande non livrée', '2020-04-01', '2020-02-01', '2020-04-01', 'en ligne par CB'),
    (3, 3, 13, 'commande validée', 'commande en cours de livraison', '2020-04-01', '2020-04-01', '2020-04-01', 'à la livraison par CB'),
    (4, 4, 14, 'commande validée', 'commande livrée', '2020-04-01', '2020-03-15', '2020-04-01', 'à la livraison par espèces'),
    (5, 5, 15, 'commande non validée', 'commande non livrée', '2020-04-05', '2020-04-01', '2020-04-01', 'à la livraison par espèces'),
    (6, 6, 16, 'commande validée', 'commande en cours de livraison', '2020-04-05', '2020-04-01', '2020-04-01', 'en ligne par CB'),
    (7, 7, 17, 'commande validée', 'commande livrée', '2020-04-01', '2020-03-20', '2020-04-01', 'à la livraison par CB'),
    (8, 8, 18, 'commande non validée', 'commande non livrée', '2020-04-01', '2020-04-05', '2020-04-01', 'à la livraison par espèces'),
    (9, 9, 19, 'commande validée', 'commande en cours de livraison', '2020-04-01', '2020-04-01', '2020-04-01', 'en ligne par CB'),
    (10, 10, 20, 'commande validée', 'commande non livrée', '2020-04-05', '2020-02-25', '2020-03-01', 'en ligne par CB')
;

-- Table Detail_Commande
INSERT INTO Detail_Commande
    (CommandeID, PlatID, quantite, "date")
VALUES
    (1, 1, 2, '2020-03-25'),
    (2, 2, 5, '2020-04-01'),
    (3, 3, 4, '2020-03-27'),
    (4, 4, 7, '2020-03-29'),
    (5, 5, 6, '2020-03-31'),
    (6, 6, 1, '2020-04-02'),
    (7, 7, 4, '2020-04-05'),
    (8, 8, 7, '2020-03-05'),
    (9, 9, 3, '2020-04-03'),
    (10, 10, 8, '2020-04-01')
;

-- Table Detail_Plat
INSERT INTO Detail_Plat
    (LivreurUtilisateurID, PlatID, quantite, "date")
VALUES
    (11, 1, 2, '2020-03-25'),
    (12, 2, 5, '2020-04-01'),
    (13, 3, 6, '2020-03-27'),
    (14, 4, 7, '2020-03-29'),
    (15, 5, 6, '2020-03-31'),
    (16, 6, 1, '2020-04-02'),
    (17, 7, 4, '2020-04-05'),
    (18, 8, 8, '2020-03-05'),
    (19, 9, 3, '2020-04-03'),
    (20, 10, 1, '2020-04-01')
;

-- Table Plat_Du_Jour
INSERT INTO Plat_Du_Jour
    (ID, PlatID, "date")
VALUES
    (1, 1, '2020-04-05'),
    (2, 2, '2020-04-05'),
    (3, 3, '2020-04-01'),
    (4, 4, '2020-04-05'),
    (5, 5, '2020-04-03'),
    (6, 6, '2020-04-05'),
    (7, 7, '2020-04-02'),
    (8, 8, '2020-04-05'),
    (9, 9, '2020-04-01'),
    (10, 10, '2020-04-05')
;

commit;
end transaction;
------------------------------------------------------
-- Fin de la transaction sur les donnees de la base
------------------------------------------------------