SELECT prenom, nom, naissance, deces, instrument
FROM artiste;

SELECT * 
FROM artiste 
WHERE (prenom='matt' || nom='pokora' ) && information = 'chante';

SELECT * FROM artiste WHERE naissance <= '2010-04-02' && naissance >= '2010-04-02' ;

#donner une liste distincte de personne triée par ordre croissant de dates de naissances

SELECT nom, prenom
FROM artiste
ORDER BY id

SELECT nom FROM artiste WHERE nom LIKE '%a';

#mot cle binary pour like pour dire que c'est sensible à la casse au niveau de la requête
#mot cles: LIKE et NOT LIKE

#syntaxe BETWEEN

SELECT nom FROM artiste WHERE naissance BETWEEN '2010-04-02' AND '2010-04-18';

#syntaxe insert
#faire une requete qui retourne toutes les prenoms qui existent dans les tables

 SELECT prenom, nom FROM artiste  WHERE prenom IN (SELECT prenom FROM liste);
 
 DELETE FROM artiste WHERE id =1;