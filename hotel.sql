-- Erstellung der Tabelle "Abteilung"
CREATE TABLE Abteilung (
    AbteilungsID INT PRIMARY KEY,          -- Primärschlüssel
    Name VARCHAR(50) NOT NULL,             -- NOT NULL für Pflichtfeld
    Standort VARCHAR(50) CHECK (Standort IN ('Berlin', 'Hamburg', 'München')) -- CHECK-Constraint
);

-- Erstellung der Tabelle "Mitarbeiter"
CREATE TABLE Mitarbeiter (
    MitarbeiterID INT PRIMARY KEY,         -- Primärschlüssel
    Name VARCHAR(100) NOT NULL,            -- NOT NULL für Pflichtfeld
    Gehalt DECIMAL(10, 2) CHECK (Gehalt >= 0), -- CHECK für Werteinschränkung
    AbteilungsID INT,                      -- Fremdschlüssel zur Abteilung
    Einstellungsdatum DATE NOT NULL,       -- NOT NULL für Pflichtfeld
    CONSTRAINT FK_Abteilung FOREIGN KEY (AbteilungsID) REFERENCES Abteilung(AbteilungsID) -- Referenzielle Integrität
);
