
-- Modifier les data d'une table
UPDATE nom_table SET 
    nom_field1 = DEFAULT, 
    nom_field2 = NULL,
    nom_field3 = @field3
WHERE exp1 = exp2