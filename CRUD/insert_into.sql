
/* Si un field n'est pas renseigné -> il prendra sa valeur par défaut */

-- Avec tous les fields rempli
INSERT INTO nom_table VALUES (field1, field2, ...)

-- Certains fields rempli
INSERT INTO nom_table(nom_field1, nom_field2) VALUES (field1, field2)

-- Inserer avec les valeurs par défaut
INSERT INTO nom_table DEFAULT VALUES

-- Inserer avec les données d'une autre table
INSERT INTO nom_table1(nom_field1, nom_field2) SELECT nom_field1, nom_field2 FROM nom_table2