
/* [ALL | DISTINCT] peut être ajouter partout */

-- Compter le nombre de lignes
select COUNT(*) from nom_table

-- Calculer la somme d'une colonne
select SUM(price) from orders

-- Calculer la moyenne d'un colonne
select AVG(price) from orders

-- Calculer le min et le max d'un colonne
select MIN(price), MAX(price) from orders

-- Calculer l'écart-type d'un colonne
select STDEV(price) from orders

-- Calculer l'écart-type de la population d'un colonne
select STDEVP(price) from orders

-- Calculer la variance d'un colonne
select VAR(price) from orders

-- Calculer la variance de la population d'un colonne
select VARP(price) from orders

