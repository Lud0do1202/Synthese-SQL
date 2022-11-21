/* *********************************************************************** *
 *                                                                         *
 * DEFAULT   --> Ajoute une valeur par défaut                              *
 *                                                                         *
 * *********************************************************************** *
 *                                                                         *
 * CREATE TABLE         --> Ajoute la DF à la création de la table         *
 * ALTER TABLE ... ADD  --> Ajoute la DF après la création de la table     *
 *                                                                         *
 * ----------------------------------------------------------------------- *
 *                                                                         *
 * CONSTRAINT   --> Ajoute un nom à la constrainte                         *
 * DEFAULT      --> Ajoute une valeur par défaut                           *
 * FOR          --> Champ recevant cette valeur par défaut                 *
 *                                                                         *
 * *********************************************************************** */ 
 
 CREATE TABLE nom_table (
    #champ DEFAULT 100
 )

 CREATE TABLE nom_table (
    #champ CONSTRAINT DF_nom_contrainte DEFAULT 100
 )

 /* ----------------------------------------------------------------------- */

 ALTER TABLE nom_table 
    ADD DEFAULT 100 FOR nom_champ
 
 ALTER TABLE nom_table 
    ADD CONSTRAINT DF_nom_contrainte DEFAULT 100 FOR nom_champ