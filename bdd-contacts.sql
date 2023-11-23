-- Création bdd : exo_contacts
CREATE DATABASE IF NOT EXISTS exo_contacts;
USE exo_contacts;

-- creation table contact"
CREATE TABLE contacts (
    id INT PRIMARY KEY,
    nom VARCHAR(70),
    prenom VARCHAR(70),
    date_de_naissance DATE,
    sexe VARCHAR(10),
    adresse TEXT,
    cp VARCHAR(10),
    ville VARCHAR(70),
    pays_iso_3 VARCHAR(3),
    FOREIGN KEY (pays_iso_3) REFERENCES pays(iso_3)
);

-- Creation de la table "telephone"
CREATE TABLE telephone (
    id INT PRIMARY KEY,
    id_contact INT,
    numero VARCHAR(50),
    type BYTE,
    FOREIGN KEY (id_contact) REFERENCES contacts(id)
);

-- Creation de la table "pays"
CREATE TABLE pays (
    iso_3 VARCHAR(3) PRIMARY KEY,
    nom VARCHAR(70),
    iso_2 VARCHAR(2),
    nationalite VARCHAR(50)
);

-- Insertion de données dans la table "pays"
INSERT INTO pays (iso_3, nom, iso_2, nationalite) VALUES
('FRA', 'France', 'FR', 'Française'),
('USA', 'United States', 'US', 'American'),
('GER', 'Germany', 'DE', 'German'),
('GBR', 'United Kingdom', 'GB', 'British'),
('CAN', 'Canada', 'CA', 'Canadian'),
('JPN', 'Japan', 'JP', 'Japanese'),
('AUS', 'Australia', 'AU', 'Australian'),
('BRA', 'Brazil', 'BR', 'Brazilian'),
('CHN', 'China', 'CN', 'Chinese'),
('IND', 'India', 'IN', 'Indian');

-- Insertion de données dans la table "contacts"
INSERT INTO contacts (id, nom, prenom, date_de_naissance, sexe, adresse, cp, ville, pays_iso_3) VALUES
(1, 'Dupont', 'Jean', '1990-01-15', 'M', '123 Rue de la Paix', '75001', 'Paris', 'FRA'),
(2, 'Smith', 'John', '1985-05-20', 'M', '456 Main Street', '10001', 'New York', 'USA'),
(3, 'Müller', 'Anna', '1988-08-12', 'F', '789 Hauptstraße', '10115', 'Berlin', 'GER'),
(4, 'Taylor', 'Emma', '1995-03-02', 'F', '101 Baker Street', 'W1U 6A1', 'London', 'GBR'),
(5, 'Leblanc', 'Pierre', '1982-11-30', 'M', '321 Rue du Commerce', 'H2X 1Y6', 'Montreal', 'CAN'),
(6, 'Yamada', 'Takashi', '1987-07-10', 'M', '987 Ginza Street', '100-0001', 'Tokyo', 'JPN'),
(7, 'Johnson', 'Emily', '1993-09-25', 'F', '654 Sydney Road', '2000', 'Sydney', 'AUS'),
(8, 'Silva', 'Rafael', '1980-12-18', 'M', '876 Copacabana Avenue', '20000-001', 'Rio de Janeiro', 'BRA'),
(9, 'Wang', 'Li', '1983-04-05', 'F', '543 Nanjing Street', '200001', 'Shanghai', 'CHN'),
(10, 'Kumar', 'Raj', '1989-06-28', 'M', '234 Delhi Avenue', '110001', 'New Delhi', 'IND');

-- Insertion de données dans la table "telephone"
INSERT INTO telephone (id, id_contact, numero, type) VALUES
(1, 1, '+33 1 23 45 67 89', 1),
(2, 2, '+1 212-555-1234', 2),
(3, 3, '+49 30 1234567', 1),
(4, 4, '+44 20 7123 1234', 2),
(5, 5, '+1 514-555-5678', 1),
(6, 6, '+81 3-1234-5678', 2),
(7, 7, '+61 2 1234 5678', 1),
(8, 8, '+55 21 98765-4321', 2),
(9, 9, '+86 21 1234 5678', 1),
(10, 10, '+91 11 1234 5678', 2);
