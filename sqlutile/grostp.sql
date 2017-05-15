


DROP DATABASE scolaire;
DROP DATABASE animal;
DROP DATABASE nom_base;
DROP DATABASE base;
DROP DATABASE sys;
DROP DATABASE topzik;



DROP DATABASE TP;


CREATE DATABASE TP;

USE TP;

CREATE TABLE ville(
ID_ville		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Nom_ville 		VARCHAR(255)
);

INSERT INTO ville (Nom_ville) VALUES
('bordeaux'),
('paris'),
('marseille'),
('lyon'),
('NYC');


CREATE TABLE eleves (
ID_eleve	INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Nom	 		VARCHAR(255),
Prenom		VARCHAR(255),
birthdate	DATE,
ID_ville	INT UNSIGNED NOT NULL,

CONSTRAINT fk_ID_ville        -- On donne un nom à notre clé
FOREIGN KEY (ID_ville)             -- Colonne sur laquelle on crée la clé
REFERENCES ville(ID_ville)

);

INSERT INTO eleves (Nom, Prenom, birthdate,ID_ville) VALUES
('barth','loutre', '1990-10-12',2),
('evrad','eddy', '1999-10-25',3),
('castor','casty', '1996-09-12',2),
('samake','fatou', '1991-12-13',1);

CREATE TABLE classe(
ID_classe		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Nom_classe		VARCHAR(255)
);

INSERT INTO classe (Nom_classe) VALUES 
('CP'),
('CE1'),
('CE2'),
('CM1'),
('CM2');








CREATE TABLE matiere(
ID_matiere		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Nom_matiere 		VARCHAR(255)
);


INSERT INTO matiere (Nom_matiere) VALUES 
('maths'),
('français'),
('physique');


CREATE TABLE notes(
ID_notes		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
valeur_notes	INT,
);

#il faut creer 4 cles etrangeres qui renvoient vers les 4 autres tables déjà créées (matière, classe, eleves et ville)
