/* *********************************************************************** *
 *                                                                         *
 * CHECK   --> Ajoute une clé primaire à la table                     *
 *                                                                         *
 * *********************************************************************** *
 *                                                                         *
 * CREATE TABLE         --> Ajoute la CK à la création de la table         *
 * ALTER TABLE ... ADD  --> Ajoute la CK après la création de la table     *
 *                                                                         *
 * ----------------------------------------------------------------------- *
 *                                                                         *
 * CONSTRAINT   --> Ajoute un nom à la constrainte                         *
 * CHECK        --> Ajoute une condition                                   *
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