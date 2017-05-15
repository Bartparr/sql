#premiere requete
#SELECT 'Voici les calculs' AS '', (2*6) AS '2*6', (4%2) AS '4%2';

#CREATE DATABASE eleve;
#DROP DATABASE eleve;



CREATE DATABASE topzik;

USE topzik;

CREATE TABLE topzik.artiste(
	id 				INT PRIMARY KEY NOT NULL,
    prenom 			VARCHAR(255),
    nom 			VARCHAR(255),
    naissance		DATE,
    deces			DATE,
    information 	TEXT

);

USE topzik;


INSERT INTO topzik.liste (id, prenom, nom) 
VALUES (15, 'fatou', 'rjezalkrjklezj'),
        (16, 'edouard', 'rjezalkrjklezj'),
        (17, 'bart', 'rjezalkrjklezj');

INSERT INTO topzik.liste (id, prenom, nom) 
VALUES (27, 'matt', 'rjezalkrjklezj');
