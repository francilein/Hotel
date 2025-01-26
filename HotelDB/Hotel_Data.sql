  --Daten in Zimmer Tabelle einfügen
    INSERT INTO Zimmer VALUES (101, 120.00, 'Y', 'Einzelzimmer');
    INSERT INTO Zimmer VALUES (102, 150.00, 'Y', 'Doppelzimmer');
    INSERT INTO Zimmer VALUES (103, 300.00, 'Y', 'Suite');
    INSERT INTO Zimmer VALUES (104, 200.00, 'N', 'Doppelzimmer');
    INSERT INTO Zimmer VALUES (105, 400.00, 'N', 'Suite');
    INSERT INTO Zimmer VALUES (106, 180.00, 'Y', 'Einzelzimmer');
    INSERT INTO Zimmer VALUES (107, 250.00, 'Y', 'Doppelzimmer');
    INSERT INTO Zimmer VALUES (108, 500.00, 'N', 'Suite');
    INSERT INTO Zimmer VALUES (109, 100.00, 'Y', 'Einzelzimmer');
    INSERT INTO Zimmer VALUES (110, 130.00, 'Y', 'Doppelzimmer');

  --Daten in Dienstleistung Tabelle einfügen
    INSERT INTO Dienstleistung VALUES (1, 'Spa', 50.00, 'Wellnessbereich mit Sauna und Pool');
    INSERT INTO Dienstleistung VALUES (2, 'Restaurant', 0.00, 'Gehobene Küche mit regionalen Spezialitäten');
    INSERT INTO Dienstleistung VALUES (3, 'Unterhaltung', 20.00, 'Live-Konzert jeden Samstagabend');
    INSERT INTO Dienstleistung VALUES (4, 'Spa', 70.00, 'Premium-Spa mit Massagen');
    INSERT INTO Dienstleistung VALUES (5, 'Unterhaltung', 15.00, 'Karaoke-Abend');
    INSERT INTO Dienstleistung VALUES (6, 'Restaurant', 0.00, 'Buffet-Frühstück');
    INSERT INTO Dienstleistung VALUES (7, 'Unterhaltung', 30.00, 'Comedy-Nacht');
    INSERT INTO Dienstleistung VALUES (8, 'Spa', 100.00, 'Privater Whirlpool-Zugang');
    INSERT INTO Dienstleistung VALUES (9, 'Restaurant', 0.00, 'Vegetarische Menüoptionen');
    INSERT INTO Dienstleistung VALUES (10, 'Unterhaltung', 10.00, 'Filmabend im hoteleigenen Kino');

  --Daten in Reservierung Tabelle einfügen
    INSERT INTO Reservierung VALUES (1, 101, 240.00, 'Bestätigt', TO_DATE('2025-01-01', 'YYYY-MM-DD'), TO_DATE('2025-01-03', 'YYYY-MM-DD'));
    INSERT INTO Reservierung VALUES (2, 102, 450.00, 'Storniert', TO_DATE('2025-01-05', 'YYYY-MM-DD'), TO_DATE('2025-01-10', 'YYYY-MM-DD'));
    INSERT INTO Reservierung VALUES (3, 103, 600.00, 'Bestätigt', TO_DATE('2025-01-02', 'YYYY-MM-DD'), TO_DATE('2025-01-04', 'YYYY-MM-DD'));
    INSERT INTO Reservierung VALUES (4, 104, 1000.00, 'Storniert', TO_DATE('2025-01-15', 'YYYY-MM-DD'), TO_DATE('2025-01-20', 'YYYY-MM-DD'));
    INSERT INTO Reservierung VALUES (5, 105, 2000.00, 'Bestätigt', TO_DATE('2025-01-10', 'YYYY-MM-DD'), TO_DATE('2025-01-15', 'YYYY-MM-DD'));
    INSERT INTO Reservierung VALUES (6, 106, 540.00, 'Bestätigt', TO_DATE('2025-01-06', 'YYYY-MM-DD'), TO_DATE('2025-01-11', 'YYYY-MM-DD'));
    INSERT INTO Reservierung VALUES (7, 107, 750.00, 'Bestätigt', TO_DATE('2025-01-08', 'YYYY-MM-DD'), TO_DATE('2025-01-12', 'YYYY-MM-DD'));
    INSERT INTO Reservierung VALUES (8, 108, 2500.00, 'Storniert', TO_DATE('2025-01-09', 'YYYY-MM-DD'), TO_DATE('2025-01-14', 'YYYY-MM-DD'));
    INSERT INTO Reservierung VALUES (9, 109, 300.00, 'Bestätigt', TO_DATE('2025-01-03', 'YYYY-MM-DD'), TO_DATE('2025-01-05', 'YYYY-MM-DD'));
    INSERT INTO Reservierung VALUES (10, 110, 260.00, 'Bestätigt', TO_DATE('2025-01-07', 'YYYY-MM-DD'), TO_DATE('2025-01-09', 'YYYY-MM-DD'));

  --Daten in Gast Tabelle einfügen
    INSERT INTO Gast VALUES (1, 1, 'Max', 'Mustermann', TO_DATE('1985-03-15', 'YYYY-MM-DD'), '1234567890', 'max@hotel.de', 'Musterstraße 1, 12345 Musterstadt');
    INSERT INTO Gast VALUES (2, 2, 'Erika', 'Musterfrau', TO_DATE('1990-07-22', 'YYYY-MM-DD'), '0987654321', 'erika@hotel.de', 'Beispielweg 2, 54321 Beispielstadt');
    INSERT INTO Gast VALUES (3, 3, 'Anna', 'Schmidt', TO_DATE('1988-11-02', 'YYYY-MM-DD'), '1231231234', 'anna@hotel.de', 'Hotelstraße 5, 11223 Hotelstadt');
    INSERT INTO Gast VALUES (4, 4, 'Peter', 'Müller', TO_DATE('1982-05-08', 'YYYY-MM-DD'), '0981234567', 'peter@hotel.de', 'Gaststraße 6, 65432 Gaststadt');
    INSERT INTO Gast VALUES (5, 5, 'Julia', 'Schneider', TO_DATE('1995-06-18', 'YYYY-MM-DD'), '5678901234', 'julia@hotel.de', 'Urlaubsweg 9, 87654 Urlaubsstadt');
    INSERT INTO Gast VALUES (6, 6, 'Paul', 'Fischer', TO_DATE('1992-12-25', 'YYYY-MM-DD'), '2345678901', 'paul@hotel.de', 'Zimmerplatz 8, 23456 Zimmerstadt');
    INSERT INTO Gast VALUES (7, 7, 'Laura', 'Weber', TO_DATE('1989-09-11', 'YYYY-MM-DD'), '3456789012', 'laura@hotel.de', 'Straße 7, 12321 Irgendstadt');
    INSERT INTO Gast VALUES (8, 8, 'Tom', 'Hofmann', TO_DATE('1987-01-01', 'YYYY-MM-DD'), '4567890123', 'tom@hotel.de', 'Stadtstraße 1, 54321 Anderstadt');
    INSERT INTO Gast VALUES (9, 9, 'Lisa', 'Bauer', TO_DATE('1993-03-14', 'YYYY-MM-DD'), '5678901234', 'lisa@hotel.de', 'Urlaubsplatz 10, 98765 Ferienstadt');
    INSERT INTO Gast VALUES (10, 10, 'David', 'Lehmann', TO_DATE('1991-08-19', 'YYYY-MM-DD'), '6789012345', 'david@hotel.de', 'Traumstraße 11, 13579 Traumstadt');

  --Daten in Rechnung Tabelle einfügen
    INSERT INTO Rechnung VALUES (1, 1, 'Kreditkarte', TO_DATE('2025-01-03', 'YYYY-MM-DD'), 240.00);
    INSERT INTO Rechnung VALUES (2, 3, 'PayPal', TO_DATE('2025-01-04', 'YYYY-MM-DD'), 600.00);
    INSERT INTO Rechnung VALUES (3, 5, 'Kreditkarte', TO_DATE('2025-01-15', 'YYYY-MM-DD'), 2000.00);
    INSERT INTO Rechnung VALUES (4, 6, 'Bargeld', TO_DATE('2025-01-11', 'YYYY-MM-DD'), 540.00);
    INSERT INTO Rechnung VALUES (5, 7, 'Kreditkarte', TO_DATE('2025-01-12', 'YYYY-MM-DD'), 750.00);
    INSERT INTO Rechnung VALUES (6, 9, 'Überweisung', TO_DATE('2025-01-05', 'YYYY-MM-DD'), 300.00);
    INSERT INTO Rechnung VALUES (7, 10, 'PayPal', TO_DATE('2025-01-09', 'YYYY-MM-DD'), 260.00);

  --Daten in Feedback Tabelle einfügen
    INSERT INTO Feedback VALUES (1, 1, 5, TO_DATE('2025-01-03', 'YYYY-MM-DD'), 'Wundervoller Aufenthalt!');
    INSERT INTO Feedback VALUES (2, 3, 4, TO_DATE('2025-01-04', 'YYYY-MM-DD'), 'Sehr gutes Zimmer, Frühstück könnte besser sein.');
    INSERT INTO Feedback VALUES (3, 5, 5, TO_DATE('2025-01-15', 'YYYY-MM-DD'), 'Perfekte Erfahrung.');
    INSERT INTO Feedback VALUES (4, 6, 3, TO_DATE('2025-01-11', 'YYYY-MM-DD'), 'Sauber, aber etwas laut.');
    INSERT INTO Feedback VALUES (5, 7, 4, TO_DATE('2025-01-12', 'YYYY-MM-DD'), 'Sehr freundliches Personal.');
    INSERT INTO Feedback VALUES (6, 9, 2, TO_DATE('2025-01-05', 'YYYY-MM-DD'), 'Zimmer war nicht sauber.');

COMMIT;