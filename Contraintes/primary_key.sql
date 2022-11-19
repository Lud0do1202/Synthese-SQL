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
 *                                                                         *
 * *********************************************************************** */

 CREATE TABLE nom_table (
    #champ PRIMARY KEY [(nom_champ, ...)]
 )

 CREATE TABLE nom_table (
    #champ CONSTRAINT PK_nom_contrainte PRIMARY KEY [(nom_champ, ...)]
 )

 /* ----------------------------------------------------------------------- */

 CREATE TABLE nom_table (
    #champ,

    PRIMARY KEY (nom_champ, ...)
 )

 CREATE TABLE nom_table (
    #champ,

    CONSTRAINT PK_nom_contrainte PRIMARY KEY (nom_champ, ...)
 )

 /* ----------------------------------------------------------------------- */

 ALTER TABLE nom_table (
    ADD PRIMARY KEY (nom_champ, ...)
 ) 
 
 ALTER TABLE nom_table (
    ADD CONSTRAINT PK_nom_contrainte PRIMARY KEY (nom_champ, ...)
 )