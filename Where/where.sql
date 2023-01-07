
select * from nom_table WHERE

    exp1 = exp2 -- Egalité
    exp1 > exp2 -- Plus grand
    exp1 < exp2 -- Plus petit
    exp1 >= exp2 -- Plus grand ou égal
    exp1 <= exp2 -- Plus petit ou égal
    exp1 != exp2 -- Différent
    exp IN (exp1, exp2, ...) -- Dans une liste
    exp IS NULL -- Est null

    /* **** */
    exp LIKE 'masque' -- Comme match avec un regex
    
    exp LIKE '_' -- Un seul char quelconque
    exp LIKE '%' -- 0 ou plusieurs char quelconques
    exp LIKE '[ab...]' -- Au moins 1 char de la liste
    exp LIKE '[^ab...]' -- Ne faisant pas parti de la liste
    exp LIKE '[a-n]' -- Same as [abc...lmn]
    exp LIKE 'abc' -- Doit être = à abc
    exp LIKE '[_]a[%]' -- Commençant par _a% (Utiliser [] pour échapper les char _ et %)

    /* **** */
    exp BETWEEN min AND max -- Entre 2 valeurs
    EXISTS sous-requete -- Return TRUE si la requête renvoie au moins une ligne
    