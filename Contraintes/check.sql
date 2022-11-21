/* *********************************************************************** *
 *                                                                         *
 * PRIMARY KEY  --> Ajoute une clé primaire à la table                     *
 *                                                                         *
 * *********************************************************************** *
 *                                                                         *
 * CREATE TABLE         --> Ajoute la PK à la création de la table         *
 * ALTER TABLE ... ADD  --> Ajoute la PK après la création de la table     *
 *                                                                         *
 * ----------------------------------------------------------------------- *
 *                                                                         *
 * CONSTRAINT   --> Ajoute un nom à la constrainte                         *
 * PRIMARY KEY  --> Les champs renseignés après seront les champs qui      *
 *                  correspondront à la PK                                 *
 * CLUSTERED    --> L'index crée automatiquement est ordonné               *
 * NONCLUSTERED --> L'index crée automatiquement n'est pas ordonné         *
 * ON filegroup --> La PK sera rangée dans ce filegroup                    *
 *                                                                         *
 * *********************************************************************** */

 CREATE TABLE nom_table (
    #champ CHECK (nom_champ >= 10)
 )

 CREATE TABLE nom_table (
    #champ CONSTRAINT CK_nom_contrainte CHECK (nom_champ >= 10)
 )

 /* ----------------------------------------------------------------------- */

 CREATE TABLE nom_table (
    #champ,

    CHECK (nom_champ >= 10)
 )

 CREATE TABLE nom_table (
    #champ,

    CONSTRAINT CK_nom_contrainte CHECK (nom_champ >= 10)
 )

 /* ----------------------------------------------------------------------- */

 ALTER TABLE nom_table 
    ADD CHECK (nom_champ >= 10)
 
 ALTER TABLE nom_table 
    ADD CONSTRAINT CK_nom_contrainte CHECK (nom_champ >= 10)