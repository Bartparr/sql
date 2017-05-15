DROP DATABASE music;

CREATE DATABASE music;

USE music;

CREATE TABLE Instrument (
    id	INT UNSIGNED AUTO_INCREMENT,
    nominstrument 			VARCHAR(255),  
    

    PRIMARY KEY(id)
);

    
INSERT INTO Instrument (nominstrument) VALUES
('piano'),
('cor'),
('clar'),
('violon');



CREATE TABLE artiste(
	ID 				INT UNSIGNED AUTO_INCREMENT,
    Prenom 			VARCHAR(255),
    Nom 			VARCHAR(255),
    cleetrangereinstrument	INT UNSIGNED,
    
	CONSTRAINT fk_instrument_id        -- On donne un nom à notre clé
	FOREIGN KEY (cleetrangereinstrument)             -- Colonne sur laquelle on crée la clé
	REFERENCES instrument(ID),

    PRIMARY KEY(ID));
    

INSERT INTO artiste (Prenom, Nom,cleetrangereinstrument) VALUES
('michel','polnareff',1),
('mika','mikanom',1),
('nolwenn','leroy',2),
('random','edouard',3);







SELECT Prenom, Nom, nominstrument FROM artiste
INNER JOIN Instrument
ON artiste.cleetrangereinstrument = instrument.id 
WHERE instrument.nominstrument = 'piano'
	 
SELECT *
FROM artiste
LEFT JOIN instrument ON artiste.cleetrangereinstrument = instrument.id

SELECT *
FROM artiste
RIGHT JOIN instrument ON artiste.cleetrangereinstrument = instrument.id
    
   
   
   SELECT * FROM artiste
   SELECT * FROM instrument
   
   
   