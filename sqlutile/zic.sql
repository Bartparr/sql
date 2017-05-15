#CREATE DATABASE topzik;
#DROP DATABASE topzik;




CREATE TABLE topzik.artiste(
	id 				INT PRIMARY KEY NOT NULL,
	prenom 			VARCHAR(255),
    nom 			VARCHAR(255),
    naissance		DATE,
	deces			DATE,
    information 	TEXT

;


ALTER TABLE topzik.artiste add(instrument VARCHAR(255), taille INT);

ALTER TABLE topzik.artiste add(earezar VARCHAR(255), reareaz INT);

ALTER TABLE topzik.artiste modify instrument VARCHAR(50);

ALTER TABLE topzik.artiste DROP taille;
ALTER TABLE topzik.artiste DROP reareaz;


INSERT INTO topzik.artiste 
VALUES (2, 'jean', 'pokora', '2010-04-02', '2010-04-02', 'chante ', 'voix');



SELECT * FROM artiste;

load data local infile 'C:/Users/ib/Desktop/tp/Classeur1.csv'
into table topzik.artiste
fields terminated by ';'
enclosed by''
lines terminated by '\n' ;
