/* *********************************************************************** *
 *                                                                         *
 * ALTER TABLE       -->   Modifier une table                              *
 *                                                                         *
 * *********************************************************************** *
 *                                                                         *
 * ALTER COLUMN      -->   Modifier une colonne                            *
 *                                                                         *
 * ------------------------------------------------------------------------ *
 *                                                                         *
 * base_type         -->   Type primaire (int, varchar, ...)               *
 * NULL | NOT NULL   -->   Définit si le champ peut être NULL              *
 *                                                                         *
 * *********************************************************************** */

 ALTER TABLE nom_table (
    ALTER COLUMN nom_champ base_type [NULL | NOT NULL]
 )