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