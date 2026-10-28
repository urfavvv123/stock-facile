-- Q1.5.1
SELECT * FROM produits;

-- Q1.5.2
SELECT * FROM produits WHERE quantite = 0;

-- Q1.5.3
SELECT * FROM produits ORDER BY prix DESC;

-- Q1.5.4
SELECT produits.nom, categories.nom AS categorie
FROM produits
INNER JOIN categories ON produits.categorie_id = categories.id;

-- Q1.5.5
SELECT categories.nom, COUNT(produits.id) AS nombre_produits
FROM categories
LEFT JOIN produits ON produits.categorie_id = categories.id
GROUP BY categories.id, categories.nom;

-- Q1.5.6
SELECT SUM(prix * quantite) AS valeur_totale_stock
FROM produits;
-- Q1.6
INSERT INTO produits (nom, prix, quantite, date_ajout, categorie_id)
VALUES ('Test prix', -5, 1, '2026-10-05T08:00:00', 1);
--L'exécution s'est terminée avec des erreurs.
--Résultat : CHECK constraint failed: prix >= 0
--À la ligne 1 :
--INSERT INTO produits (nom, prix, quantite, date_ajout, categorie_id)
--VALUES ('Test prix', -5, 1, '2026-10-05T08:00:00', 1);
-- Q1.56
INSERT INTO produits (nom, prix, quantite, date_ajout, categorie_id)
VALUES ('Test catégorie', 1, 1, '2026-10-05T08:00:00', 99
--L'exécution s'est terminée avec des erreurs.
--Résultat : incomplete input
--À la ligne 1 :
--INSERT INTO produits (nom, prix, quantite, date_ajout, categorie_id)
--VALUES ('Test catégorie', 1, 1, '2026-10-05T08:00:00', 99

--Q1.6
DELETE FROM categories WHERE id = 1;
--L'exécution s'est terminée avec des erreurs.
--Résultat : FOREIGN KEY constraint failed
--À la ligne 1 :
--DELETE FROM categories WHERE id = 1;