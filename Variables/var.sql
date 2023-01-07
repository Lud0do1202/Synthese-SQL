

/* Declarer une ou plusieurs var  */
DECLARE @ln VARCHAR(20), @fn VARCHAR(20)

/* Remplir une var avec un select */
SELECT 
    @ln = lastname, 
    @fn = firstname
FROM 
    Employees
WHERE 
    employeeid = 1

/* Modifier la var avec une concatenation */
SET @ln = "_" + @ln + "_"

/* Afficher les var */
SELECT @fn, @ln
