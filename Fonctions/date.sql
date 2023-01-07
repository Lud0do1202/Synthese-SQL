
/* Les fonctions utilise des experssions de type DATETIME */

/* Pour voir les formats --> page 12 du 2ème syllabus */

-- Date et heure système
select GETDATE()

-- Extraire une partie d'une datetime
select DATENAME(@format, @datetime) -- Renvoie la forme text si possible (January)
select DATEPART(@format, @datetime) -- Renvoie la forme int (1)

-- Dire quel jour est le premier de la semaine (dimanche (1) -> samedi(7))
SET DATEFIRST 2 -- Dire que lundi est le premier jour de la semaine
select @@datefirst -- voir cette config

-- Calculs de date
select DATEDIFF(@format, @dateime1, @dateime2) -- Différence entre 2 date
select DATEADD(@format, n, @datetime) -- Ajouter n unité de temp

-- Easy Format
select DAY(@dateime) -- return num du jour dans le mois
select MONTH(@dateime) -- return num du mois
select YEAR(@dateime) -- return l'année