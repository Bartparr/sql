USE topzik;

CREATE TABLE topzik.moules (
    ID 			int UNSIGNED AUTO_INCREMENT,
    LastName 	varchar(255) NOT NULL,
    FirstName	varchar(255),
    Age int,
    PRIMARY KEY (ID)
);


INSERT INTO topzik.moules (Lastname, Firstname) VALUES
('loutre', 'tiger'),
('chien', 'panthere');

CREATE TABLE topzik.loutres(
Prenom 	VARCHAR(23),
Nom		VARCHAR(14),
ID 		INT UNSIGNED AUTO_INCREMENT,
PRIMARY KEY (ID)
);


INSERT INTO topzik.loutres(Prenom,Nom) VALUES
('Roger','loutrerer'),
('rafa','nadaloutre');

UPDATE loutres
SET Prenom='barth', Nom='bartheleloutre'
WHERE Prenom='rafa' && ID = 2; 

INSERT INTO loutres (Prenom,Nom) VALUES
('fatou','samaloutre'),
('freddy', 'hebreloutre'),
('edouard', 'selveloutre');


ALTER TABLE loutres add(Taille INT UNSIGNED, Surnom VARCHAR(255));

ALTER TABLE loutres modify Taille VARCHAR(25);

ALTER TABLE loutres DROP Taille;


ALTER TABLE loutres ADD (birth DATE);


DELETE FROM loutres WHERE ID = 3;
