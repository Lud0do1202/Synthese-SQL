
-- Valeur absolue
select ABS(@var)

-- Arondir à l'entier supérieur
select CEILING(@var)

-- Arondir à l'entier inférieur
select FLOOR(@var)

-- Renvoie le signe (-1 si négatif / 0 si = 0 / 1 si positif)
select SIGN(@var)

-- Racine carrée
select SQRT(@var)

-- Puissance
select POWER(@var)

-- Le carré
select SQUARE(@var)

-- Nombre aléatoire entre 0 et 1
select RAND()

-- Arondir une var
-- @var     La valeur à arrondir
-- n (> 0)  Nombre de décimales
-- n (<= 0) Arrondit à l'entier (0), à la dizaine (1), à la centaine (2) le plus proche
select ROUND(@var, n)