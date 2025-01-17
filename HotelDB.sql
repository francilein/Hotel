CREATE TABLE Gast (
    GastID INT PRIMARY KEY,
    ReservierungsID INT, -- Fremdschlüssel zur Tabelle Reservierung
    Vorname VARCHAR(50) NOT NULL,
    Nachname VARCHAR(50) NOT NULL,
    Geburtsdatum DATE NOT NULL,
    Telefonnummer VARCHAR(20),
    Email VARCHAR(100) NOT NULL,
    Adresse VARCHAR(100) NOT NULL
)

CREATE TABLE Rechnung (
    RechnungsID INT PRIMARY KEY,
    GastID INT, -- Fremdschlüssel zur Tabelle Gast
    Zahlungsart VARCHAR(50) NOT NULL,
    Zahlungsdatum DATE NOT NULL,
    Betrag DECIMAL(10, 2) CHECK (Betrag >= 0)
)

CREATE TABLE Feedback (
    FeedbackID INT PRIMARY KEY,
    GastID INT, -- Fremdschlüssel zur Tabelle Gast
    Bewertung INT CHECK (Bewertung >= 1 AND Bewertung <= 5),
    Datum DATE NOT NULL,
    Kommentar TEXT
)

CREATE TABLE Reservierung (
    ReservierungsID INT PRIMARY KEY,
    Zimmernummer INT, -- Fremdschlüssel zur Tabelle Zimmer
    Gesamtsumme DECIMAL(10, 2) CHECK (Gesamtsumme >= 0),
    Buchungsstatus VARCHAR(50) NOT NULL,
    Check_out DATE NOT NULL, 
    Check_in DATE NOT NULL
)

CREATE TABLE Zimmer (
    Zimmernummer INT PRIMARY KEY,
    PreisProNacht DECIMAL(10, 2) CHECK (PreisProNacht >= 0),
    Kategorie VARCHAR(50) NOT NULL,
    Verfuegbarkeit BOOLEAN NOT NULL,
    Kategorie VARCHAR(50) CHECK (Kategorie IN ('Einzelzimmer', 'Doppelzimmer', 'Suite'))
)

CREATE TABLE Personal (
    MitarbeiterID INT PRIMARY KEY,
    Gehalt INT CHECK (Gehalt >= 0),
    Arbeitszeiten VARCHAR(50) NOT NULL,
    Position VARCHAR(50) NOT NULL,
    Vorname VARCHAR(50) NOT NULL,
    Nachname VARCHAR(50) NOT NULL
)

CREATE TABLE Dienstleistung (
    ServiceID INT PRIMARY KEY,
    Bezeichnung VARCHAR(50) CHECK (Bezeichnung IN ('Spa', 'Restaurant', 'Unterhaltung')),
    Preis DECIMAL(10, 2) CHECK (Preis >= 0),
    Beschreibung TEXT
)

CREATE TABLE Spa (
    ServiceID INT, -- Fremdschlüssel zur Tabelle Dienstleistung
    Oeffnungszeiten VARCHAR(50) NOT NULL,
    Ausstattung TEXT,
    Kapazitaet INT CHECK (Kapazitaet >= 0),
    CONSTRAINT FK_Dienstleistung FOREIGN KEY (ServiceID) REFERENCES Dienstleistung(ServiceID)
)

CREATE TABLE Unterhaltung (
    ServiceID INT, -- Fremdschlüssel zur Tabelle Dienstle
    Uhrzeit VARCHAR(50) NOT NULL,
    Dauer INT CHECK (Dauer >= 0),
    Datum DATE NOT NULL,
    Art VARCHAR(50) CHECK (Art IN ('Konzert', 'Theater', 'Film')),
    Beschreibung TEXT,
    CONSTRAINT FK_Dienstleistung FOREIGN KEY (ServiceID) REFERENCES Dienstleistung(ServiceID)
)

CREATE TABLE Restaurant (
    ServiceID INT, -- Fremdschlüssel zur Tabelle Dienstle
    Sitze INT CHECK (Sitze >= 0),
    Oeffnungszeiten VARCHAR(50) NOT NULL,
    Speisen TEXT,
    Getraenke TEXT,
    CONSTRAINT FK_Dienstleistung FOREIGN KEY (ServiceID) REFERENCES Dienstleistung(ServiceID)
)








