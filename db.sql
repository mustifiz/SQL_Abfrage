# 1. SELECT - Daten aus einer Datenbank abrufen (Verwendet für Datenabfragen)
* (en)This query selects first_name, last_name, and email from the customers table where the country is 'USA'.
* (de)Diese Abfrage wählt die Spalten vorname, nachname und email aus der Tabelle kunden, wo das land Deutschland ist.

SELECT first_name, last_name, email
FROM customers
WHERE country = 'USA';

# 2. UPDATE - Updates data in a database
# 2. UPDATE - Daten in einer Datenbank aktualisieren
* (en)This query updates the email of the customer with customer_id = 10 to 'newemail@example.com'.
* (de)Diese Abfrage aktualisiert die E-Mail-Adresse des Kunden mit der kunden_id = 10 auf 'neueemail@example.com'.

UPDATE customers
SET email = 'newemail@example.com'
WHERE customer_id = 10;


# 3. DELETE - Deletes data from a database
# DELETE - Daten aus einer Datenbank löschen
* Diese Abfrage löscht den Datensatz aus der Tabelle kunden, wo die kunden_id 10 ist.


DELETE FROM customers
WHERE customer_id = 10;

# 4. INSERT INTO - insert new data into a database
# 4. INSERT INTO - Neue Daten in eine Datenbank einfügen
* Diese Abfrage fügt einen neuen Datensatz in die Tabelle kunden mit den angegebenen Werten ein.

# Syntax
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

INSERT INTO customers(first_name, last_name, email,country)
VALUES ('John, 'Doe', 'johndoe@example.com', 'USA');')

# 5. CREATE DATABASE - Eine neue Datenbank erstellen
*Diese Abfrage erstellt eine neue Datenbank namens meine_neue_datenbank.

CREATE DATABASE meine_neue_datenbank;

# 6. ALTER DATABASE - Eine Datenbank ändern
* Diese Abfrage setzt die Datenbank meine_neue_datenbank in den Nur-Lesen-Modus.

ALTER DATABASE meine_neue_datenbank
SET READ_ONLY;

# 7. CREATE TABLE - Eine neue Tabelle erstellen
* Diese Abfrage erstellt eine neue Tabelle namens kunden mit den Spalten kunden_id, vorname, nachname, email und land.
CREATE TABLE kunden (
    kunden_id INT PRIMARY KEY,
    vorname VARCHAR(50),
    nachname VARCHAR(50),
    email VARCHAR(100),
    land VARCHAR(50)
);

# 8. ALTER TABLE - Eine Tabelle ändern
* Diese Abfrage fügt der Tabelle kunden eine neue Spalte telefonnummer hinzu.

ALTER TABLE kunden
ADD telefonnummer VARCHAR(20);

#9. DROP TABLE - Eine Tabelle löschen
Diese Abfrage löscht die Tabelle kunden.

DROP TABLE kunden;

#10. CREATE INDEX - Einen Index (Suchschlüssel) erstellen
Diese Abfrage erstellt einen Index auf der Spalte nachname der Tabelle kunden, um die Suche zu optimieren.
CREATE INDEX idx_nachname
ON kunden (nachname);

# 11. DROP INDEX - Einen Index löschen
Diese Abfrage löscht den Index idx_nachname, der auf der Spalte nachname der Tabelle kunden erstellt wurde.
DROP INDEX idx_nachname;

# 12 Diese Abfrage wählt alle Kunden in der Tabelle „Kunden“ aus, deren KundenID-Wert größer als 80 ist.

SELECT * FROM Kunden
WHERE KundenID > 80;

#13 SQL ORDER BY Das Schlüsselwort ORDER BY wird verwendet, um das Ergebnis einer Abfrage in aufsteigender (ASC) oder absteigender (DESC) Reihenfolge zu sortieren.
* The ORDER BY keyword is used to sort the result-set in ascending or descending order.

* Syntax
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;

* Beispiel

SELECT * FROM Products
ORDER BY ProductName;

SELECT * FROM Products
ORDER BY ProductName DESC;

SELECT * FROM Customers
ORDER BY Country, CustomerName;

* Using Both ASC and DESC
SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;

# 14 The SQL AND Operator
* SQL AND Operator:

* Der AND-Operator in SQL wird verwendet, um mehrere Bedingungen in einer SQL-Abfrage zu kombinieren. Das Ergebnis wird nur dann zurückgegeben, wenn alle Bedingungen wahr sind.
* In diesem Fall werden nur die Datensätze zurückgegeben, bei denen sowohl das Land 'Deutschland' als auch die Stadt 'Berlin' ist.

SELECT * FROM Kunden
WHERE Land = 'Deutschland' AND Stadt = 'Berlin';

#15 Der SQL-ODER-Operator
* Die WHERE-Klausel kann einen oder mehrere ODER-Operatoren enthalten.
SELECT * FROM Customers
WHERE Country = 'Germany' OR Country = 'Spain';

#16 Kombinieren von AND und OR
*Sie können die Operatoren AND und OR kombinieren.

*Die folgende SQL-Anweisung wählt alle Kunden aus Spanien aus, die mit einem „G“ oder einem „R“ beginnen.


SELECT * FROM Customers
WHERE Country = 'Spain'
AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');

#16 The NOT Operator:
*Der NOT-Operator wird in Kombination mit anderen Operatoren verwendet, um das Gegenteil des Ergebnisses zu erhalten, also ein sogenanntes negatives Ergebnis.
*In diesem Fall werden alle Kunden zurückgegeben, außer diejenigen, deren Land 'Deutschland' ist. Der NOT-Operator negiert also die Bedingung und kehrt das Ergebnis um.

- Syntax
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;

SELECT * FROM Kunden
WHERE NOT Land = 'Deutschland';

#17 Was ist ein NULL-Wert?
Ein Feld mit einem NULL-Wert ist ein Feld ohne Wert.

Wenn ein Feld in einer Tabelle optional ist, ist es möglich, einen neuen Datensatz einzufügen oder einen Datensatz zu aktualisieren, ohne diesem Feld einen Wert hinzuzufügen. Dann wird das Feld mit einem NULL-Wert gespeichert.


* Syntax
SELECT column_names
FROM table_name
WHERE column_name IS NULL;

SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;




## SQL Aggregate Functions

Eine Aggregatfunktion ist eine Funktion, die eine Berechnung über eine Menge von Werten durchführt und einen einzelnen Wert zurückgibt.

Aggregatfunktionen werden oft in Verbindung mit der GROUP BY-Klausel der SELECT-Anweisung verwendet. Die GROUP BY-Klausel unterteilt das Ergebnissatz in Gruppen von Werten, und die Aggregatfunktion kann verwendet werden, um für jede Gruppe einen einzelnen Wert zurückzugeben.

Die am häufigsten verwendeten SQL-Aggregatfunktionen sind:

MIN() - gibt den kleinsten Wert in der ausgewählten Spalte zurück.
MAX() - gibt den größten Wert in der ausgewählten Spalte zurück.
COUNT() - gibt die Anzahl der Zeilen in einer Menge zurück.
SUM() - gibt die Gesamtsumme einer numerischen Spalte zurück.
AVG() - gibt den Durchschnittswert einer numerischen Spalte zurück.
Aggregatfunktionen ignorieren Nullwerte (außer bei COUNT()).

# 1. MIN() - Gibt den kleinsten Wert zurück
Diese Abfrage gibt den niedrigsten Preis in der Spalte preis der Tabelle produkte zurück.

SELECT MIN(preis) AS niedrigster_preis
FROM produkte;

#2. MAX() - Gibt den größten Wert zurück
SELECT MAX(preis) AS höchster_preis
FROM produkte;
Diese Abfrage gibt den höchsten Preis in der Spalte preis der Tabelle produkte zurück.

#3. COUNT() - Gibt die Anzahl der Zeilen zurück

Diese Abfrage gibt die Gesamtanzahl der Kunden in der Tabelle kunden zurück.
SELECT COUNT(*) AS gesamt_kunden
FROM kunden;

#4.4. SUM() - Gibt die Gesamtsumme zurück
Diese Abfrage gibt die Summe aller Werte in der Spalte menge der Tabelle bestell_details zurück.
SELECT SUM(menge) AS gesamt_menge
FROM bestell_details;
 #5. AVG() - Gibt den Durchschnittswert zurück
Diese Abfrage gibt den Durchschnittswert in der Spalte bewertung der Tabelle produkt_bewertungen zurück.

SELECT AVG(bewertung) AS durchschnitt_bewertung
FROM produkt_bewertungen;

#6. Beispiele mit GROUP BY

a. MIN() mit GROUP BY
Diese Abfrage gibt den niedrigsten Preis für jede Kategorie zurück.
SELECT kategorie, MIN(preis) AS niedrigster_preis
FROM produkte
GROUP BY kategorie;

b. MAX() mit GROUP BY
SELECT kategorie, MAX(preis) AS höchster_preis
FROM produkte
GROUP BY kategorie;
Diese Abfrage gibt den höchsten Preis für jede Kategorie zurück.

c. COUNT() mit GROUP BY
SELECT land, COUNT(*) AS gesamt_kunden
FROM kunden
GROUP BY land;
Diese Abfrage gibt die Gesamtanzahl der Kunden für jedes Land zurück.

d. SUM() mit GROUP BY
Diese Abfrage gibt den Gesamtwert jeder Bestellung zurück.

SELECT bestell_id, SUM(gesamt_preis) AS gesamt_bestellwert
FROM bestellungen
GROUP BY bestell_id;

e. AVG() mit GROUP BY
Diese Abfrage gibt die durchschnittliche Bewertung für jede Kategorie zurück.

SELECT kategorie, AVG(bewertung) AS durchschnitt_bewertung
FROM produkt_bewertungen
GROUP BY kategorie;

# 1 .Der SQL LIKE-Operator
Der LIKE-Operator wird in einer WHERE-Klausel verwendet, um nach einem bestimmten Muster in einer Spalte zu suchen.

Es gibt zwei Platzhalter, die häufig in Verbindung mit dem LIKE-Operator verwendet werden:

Das Prozentzeichen % steht für null, ein oder mehrere Zeichen
Das Unterstrichzeichen _ steht für ein einzelnes Zeichen

#Syntax
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;


Wählen Sie alle Kunden aus, die mit dem Buchstaben „a“ beginnen:
SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';

# 2.Der SQL-IN-Operator
Mit dem IN-Operator können Sie mehrere Werte in einer WHERE-Klausel angeben.

Der IN-Operator ist eine Abkürzung für mehrere OR-Bedingungen.

Syntax
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);

SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');


# 3.Der SQL-BETWEEN-Operator
Der BETWEEN-Operator wählt Werte innerhalb eines bestimmten Bereichs aus. Die Werte können Zahlen, Text oder Daten sein.

Der BETWEEN-Operator ist inklusiv: Anfangs- und Endwerte sind eingeschlossen.

Syntax
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;

# 4.SQL-Aliase
SQL-Aliase werden verwendet, um einer Tabelle oder einer Spalte in einer Tabelle einen temporären Namen zu geben.

Aliase werden häufig verwendet, um Spaltennamen lesbarer zu machen.

Ein Alias ​​existiert nur für die Dauer dieser Abfrage.

Ein Alias ​​wird mit dem Schlüsselwort AS erstellt.

Syntax
When alias is used on column:

SELECT column_name AS alias_name
FROM table_name;

When alias is used on table:

SELECT column_name(s)
FROM table_name AS alias_name;


#5.SQL JOIN
Eine JOIN-Klausel wird verwendet, um Zeilen aus zwei oder mehr Tabellen basierend auf einer verknüpften Spalte zwischen ihnen zu kombinieren.

Sehen wir uns eine Auswahl aus der Tabelle „Bestellungen“ an:

Verschiedene Arten von SQL-JOINs
Hier sind die verschiedenen Arten von JOINs in SQL:

(INNER) JOIN: Gibt Datensätze zurück, die in beiden Tabellen übereinstimmende Werte haben
LEFT (OUTER) JOIN: Gibt alle Datensätze aus der linken Tabelle und die übereinstimmenden Datensätze aus der rechten Tabelle zurück
RIGHT (OUTER) JOIN: Gibt alle Datensätze aus der rechten Tabelle und die übereinstimmenden Datensätze aus der linken Tabelle zurück
FULL (OUTER) JOIN: Gibt alle Datensätze zurück, wenn es eine Übereinstimmung in der linken oder rechten Tabelle gibt

Syntax

SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;

LEFT JOIN Syntax
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;

RIGHT JOIN Syntax
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;

FULL OUTER JOIN Syntax
SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;

Self Join Syntax
SELECT column_name(s)
FROM table1 T1, table1 T2
WHERE condition;

# Der SQL UNION-Operator
Der UNION-Operator wird verwendet, um die Ergebnismenge von zwei oder mehr SELECT-Anweisungen zu kombinieren.

Jede SELECT-Anweisung innerhalb von UNION muss die gleiche Anzahl Spalten haben
Die Spalten müssen außerdem ähnliche Datentypen haben
Die Spalten in jeder SELECT-Anweisung müssen außerdem in der gleichen Reihenfolge sein

UNION Syntax
SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;

#GROUP BY 

Syntax
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);


#Die SQL HAVING-Klausel
Die HAVING-Klausel wurde zu SQL hinzugefügt, da das Schlüsselwort WHERE nicht mit Aggregatfunktionen verwendet werden kann.

HAVING Syntax
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);