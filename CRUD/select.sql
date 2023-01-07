
-- SELECT [DISTINCT]
SELECT [DISTINCT] nom_field1, nom_field2 FROM nom_table

-- Alias
SELECT nom_field AS "FIELD 1" FROM nom_table

-- Afficher une colonne avec un text
SELECT 'TEXT' as nom_field_text, nom_field AS "FIELD 1" FROM nom_table

-- WHERE
SELECT nom_field FROM nom_table WHERE condition

-- Agrégation
SELECT 
    nom_field1, 
    nom_field2, 
    SUM(nom_field3) 
FROM nom_table 
GROUP BY nom_field1, field2
HAVING SUM(nom_field3) > 100 -- Condition avec un GROUP BY (peut utilisé les fct d'agrégation)

-- Jointure
SELECT
    a.field1,
    b.field2
FROM
    tablea as a,
    tableb as b
WHERE a.id = b.id

-- Order by
SELECT nom_field FROM nom_table ORDER BY nom_field [ASC | DESC]

-- Union (regouper les res plusieurs select en 1)
select field1 from table1
Union
select field2 from table1 --> == select field1, field2 from table1

-- Select les n premières row
select top(n) * from table1

--Stocker les res dans une table (#nouvelle_table -> table temp locale, ##nouvelle_table -> table temp globale)
select field1, field2 INTO nouvelle_table from table1 

-- Ajouter des row calculant la somme des res d'une fonction d'agrégation en commançant par la colonne le plus à droite
select year, month, SUM(sales) from sales_table
group by year, month WITH ROLLUP
/*
+------+-------+------------+
| year | month | SUM(sales) |
+------+-------+------------+
| 2021 |     1 |        100 |
| 2021 |     2 |        200 |
| 2021 |     3 |        300 |
| 2021 |  NULL |        600 |
| 2022 |     1 |        400 |
| 2022 |     2 |        500 |
| 2022 |  NULL |        900 |
| NULL |  NULL |       1500 |
+------+-------+------------+
*/

-- Ajouter des row calculant la somme des res d'une fonction d'agrégation avec toutes les combinaisons possibles
select year, month, SUM(sales) from sales_table
group by year, month WITH CUBE
/*
+------+-------+------------+
| year | month | SUM(sales) |
+------+-------+------------+
| 2021 |     1 |        100 |
| 2021 |     2 |        200 |
| 2021 |     3 |        300 |
| 2021 |  NULL |        600 |
| 2022 |     1 |        400 |
| 2022 |     2 |        500 |
| 2022 |  NULL |        900 |
| NULL |     1 |        500 |
| NULL |     2 |        700 |
| NULL |     3 |        300 |
| NULL |  NULL |       1500 |
+------+-------+------------+
*/

-- Select imbriqués
select * from table1 WHERE
    field1 = (select field1 from table2 where condition) -- ne doit renvoyé qu'une seul row
    AND field2 IN (select field2 from table2 where condition) -- peut renvoyé plusieurs rows

select ref_item from items WHERE
    NOT EXISTS (select * from cmd where cmd.ref_item = items.ref_item) -- return les items n'étant dans aucune cmd