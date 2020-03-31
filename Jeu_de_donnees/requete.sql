-----------------------------------------------------------
-- #Quelques requetes sur la base de donnees
-----------------------------------------------------------
-- La liste de tous les utilisateurs
select * 
from utilisateur;

-- La liste de tous les administrateurs
select *
from utilisateur, administrateur
where utilisateur.id = administrateur.utilisateurid;

-- La liste de tous les livreurs, avec leur statut (libre, en cours de livraison) et leur position
select prenom, nom, statut, position
from utilisateur, livreur
where utilisateur.id = livreur.utilisateurid;

-- Les nom et prenom des clients avec leurs adresses
select prenom, nom, adresse
from utilisateur, client
where utilisateur.id = client.utilisateurid;

-- Les differents plats et desserts du jour à la date du 05 avril 2020
select nom, type
from plat, plat_du_jour
where plat.id = plat_du_jour.platid and date = '2020-04-05';

-- Tous les livreurs à qui on a donne des plats et desserts, avec leurs quantites à la date du 05 avril 2020
select prenom, nom, quantite
from utilisateur, detail_plat
where utilisateur.id = detail_plat.livreurutilisateurid 
    and date = '2020-04-05';

-- Tous les clients qui ont commandé à la date du 01 avril 2020, 
-- avec le statut de leurs commandes et le statut de la livraison
select prenom, nom, statut_commande, statut_livraison
from utilisateur, commande
where utilisateur.id = commande.clientutilisateurid 
	and date_commande = '2020-04-01';

-- Toutes les commandes passees
select * 
from commande;
