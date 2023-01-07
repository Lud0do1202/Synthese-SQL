
-- Valeur ASCII du 1er char 
select ASCII(@str)

-- Valeur Unicode du 1er char 
select UNICODE(@str)

-- Valeur ASCII du str
select CHAR(@str)

-- Valeur UNICODE du str
select NCHAR(@str)

-- Supprimer les espace inutile
select LTRIM(@str) -- à gauche
select RTRIM(@str) -- à droite

-- Convertir un nombre en une chaine de longueur totale @lg et avec un nombre de décimales @ndb
select STR(@number, [@lg, [@ndb]])

-- Return n espace
select SPACE(n)

-- Return n fois l'expression
select REPLICATE(@exp, n)

-- Renvoie la position de départ de la première expression ’masque’ dans expc
select CHARINDEX(@masque, @exp) -- @masque = 'abc'
select PATINDEX(@masque, @exp) -- @masque = '%abc_' voir LIKE

-- Majuscule ou Minuscule
select UPPER(@str)
select LOWER(@str)

-- Retourne l'exp à l'envers
select REVERSE(@exp)

-- Return les n chars à gauche/droite
select LEFT(@str, n)
select RIGHT(@str, n)

-- Extraire @lg char d'un string partant de @dp
select SUBSTRING(@str, @dp, @lg)

-- Extraire @lg char d'un string partant de @dp et la remplace par @str2
select STUFF(@str1, @dp, @lg, @str2)

-- Nombre de char
select LEN(@str)

/* Pas compris
-- Permet de transformer expc en identifiant valide pour SQL Server.
QUOTENAME(expc[,delimiteur])
*/

-- Replace dans @str les @strToSearch par @strReplace
select REPLACE(@str, @strToSearch, @strReplace)
