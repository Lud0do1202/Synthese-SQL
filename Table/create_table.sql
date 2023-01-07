/* *********************************************************************** *
 *                                                                         *
 * CREATE TABLE 	   --> Créer une table 				                        *
 *                                                                         *
 * *********************************************************************** *
 *                                                                         *
 * base_type         --> Type primaire (int, varchar, ...)                 *
 * NULL | NOT NULL   --> Définit si le champ peut être NULL                *
 * IDENTITY(s, i)    --> Définit une auto-incrémentation sur le champ id   *
 *                       s = premier id                                    *
 *                       i = incrémentation                                *
 *                       !!!!!!!  1 SEUL PAR TABLE  !!!!!!!!!!             *
 * ON                --> Ajoute cette table à un filegroup                 *
 * TEXTIMAGE_ON      --> Permet de relier les types xml, varchar(max),     *
 *                      nvarchar(max), varbinary(max) à un filegroup       *
 *                                                                         *
 * *********************************************************************** */

 CREATE TABLE nom_table (
    nom_champ base_type [NULL | NOT NULL] IDENTITY(1, 1),
 ) 
 ON nom_filegroup
 TEXTIMAGE_ON nom_filegroup;

  CREATE TABLE #nom_table_TEMP_Locale (
    nom_champ base_type [NULL | NOT NULL] IDENTITY(1, 1),
 ) 
  CREATE TABLE ##nom_table_TEMP_Globale (
    nom_champ base_type [NULL | NOT NULL] IDENTITY(1, 1),
 ) 