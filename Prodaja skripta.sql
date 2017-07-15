CREATE DATABASE Prodaja;
USE Prodaja;
CREATE TABLE Kupac (
    rb INT NOT NULL AUTO_INCREMENT,
    ime NVARCHAR(45) NOT NULL,
    prezime NVARCHAR(45) NOT NULL,
    telefon NVARCHAR(45) NOT NULL,
    email NVARCHAR(30),
    PRIMARY KEY (rb)
);

CREATE TABLE Magacin (
    rb INT NOT NULL AUTO_INCREMENT,
    adresa NVARCHAR(45) NOT NULL,
    telefon NVARCHAR(50) NOT NULL,
    kapacitet INT NOT NULL DEFAULT 0,
    PRIMARY KEY (rb)
);

CREATE TABLE Artikl (
    rb INT NOT NULL AUTO_INCREMENT,
    naziv NVARCHAR(45) NOT NULL,
    cijena FLOAT,
    kolicina INT NOT NULL DEFAULT 0,
    zemljaPorijekla NVARCHAR(60),
    Magacin_rb INT NOT NULL,
    PRIMARY KEY (rb),
    FOREIGN KEY (Magacin_rb)
        REFERENCES Magacin (rb)
);

CREATE VIEW Spisak AS
    SELECT 
        *
    FROM
        Magacin;
ALTER TABLE Kupac ADD ime_roditelja NVARCHAR (30);
ALTER TABLE Kupac DROP ime_roditelja;
ALTER TABLE Kupac MODIFY email VARCHAR (50);
ALTER TABLE Kupac CHANGE COLUMN telefon brojTelefona VARCHAR (40);
RENAME TABLE Kupac TO Klijent;
INSERT INTO	Magacin (Adresa,Telefon,Kapacitet) VALUES ('Obala Maka Dizdara 3','035111-222',2000);
INSERT INTO	Magacin (Adresa,Telefon,Kapacitet) VALUES ('Marsala Tita 137','035111-333',1500);
INSERT INTO	Magacin (Adresa,Telefon,Kapacitet) VALUES ('Zvonka Cerica 1','035111-444',3000);
INSERT INTO Artikl (Magacin_rb,Naziv,Cijena,Kolicina,ZemljaPorijekla) VALUES (1,'Artikl br 1.',199.99,100,'Germany');
INSERT INTO Artikl (Magacin_rb,Naziv,Cijena,Kolicina,ZemljaPorijekla) VALUES (2,'Artikl br 2.',299.99,103,'Serbian');
INSERT INTO Artikl (Magacin_rb,Naziv,Cijena,Kolicina,ZemljaPorijekla) VALUES (3,'Artikl br 3.',190,170,'USA');
INSERT INTO Artikl (Magacin_rb,Naziv,Cijena,Kolicina,ZemljaPorijekla) VALUES (3,'Artikl br 4.',599.05,340,'Germany');
INSERT INTO Artikl (Magacin_rb,Naziv,Cijena,Kolicina,ZemljaPorijekla) VALUES (2,'Artikl br 5.',179.97,140,'Switzerland');
INSERT INTO Artikl (Magacin_rb,Naziv,Cijena,Kolicina,ZemljaPorijekla) VALUES (1,'Artikl br 6.',397,390,'France');
INSERT INTO Artikl (Magacin_rb,Naziv,Cijena,Kolicina,ZemljaPorijekla) VALUES (1,'Artikl br 7.',269.07,250,'Dansk');
RENAME TABLE Kupac TO Klijent;
INSERT INTO Kupac (ime,prezime,telefon,email) VALUES ('Marko','Marković','061/111-111','marko@gmail.com');
INSERT INTO Kupac (ime,prezime,telefon,email) VALUES ('Pero','Perić','061/222-222','pero@gmail.com');
INSERT INTO Kupac (ime,prezime,telefon,email) VALUES ('Maria','Marić','061/333-333','maria@gmail.com');
INSERT INTO Kupac (ime,prezime,telefon,email) VALUES ('Tanja','Tanjić','061/444-444','tanja@gmail.com');
INSERT INTO Kupac (ime,prezime,telefon,email) VALUES ('Azur','Azurić','061/555-555','azuro@gmail.com');
INSERT INTO Magacin (adresa,telefon,kapacitet) VALUES ('Ivo Andrić 5','061/555-555',500);
INSERT INTO Magacin (adresa,telefon,kapacitet) VALUES ('Blace 4','061/555-585',200);
INSERT INTO Magacin (adresa,telefon,kapacitet) VALUES ('Vidovdanska 455','061/557-555',600);
SELECT * FROM Magacin;



