--Trigger zur Berechnung des Gesamtpreises einer Reservierung
CREATE OR REPLACE TRIGGER BerechneGesamtsumme
BEFORE INSERT OR UPDATE ON Reservierung
FOR EACH ROW
DECLARE
    v_preis DECIMAL(10, 2);
BEGIN
    -- Hole den Preis pro Nacht aus der Zimmer-Tabelle
    SELECT PreisProNacht
    INTO v_preis
    FROM Zimmer
    WHERE Zimmernummer = :NEW.Zimmernummer;

    -- Berechne die Gesamtsumme basierend auf der Anzahl der Nächte
    :NEW.Gesamtsumme := v_preis * (TRUNC(:NEW.Check_out) - TRUNC(:NEW.Check_in));

    -- Falls keine Gültigkeit für Check_in oder Check_out, gebe Fehlermeldung zurück
    IF :NEW.Check_out <= :NEW.Check_in THEN
        RAISE_APPLICATION_ERROR(-20001, 'Das Check-out-Datum muss nach dem Check-in-Datum liegen.');
    END IF;
END;
/
-- Beispiel: Aktualisieren einer bestehenden Reservierung
UPDATE Reservierung
SET Check_in = TO_DATE('2025-01-03', 'YYYY-MM-DD'), Check_out = TO_DATE('2025-01-10', 'YYYY-MM-DD')
WHERE ReservierungsID = 1;
