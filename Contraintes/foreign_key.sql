/* *********************************************************************** *
 *                                                                         *
 * FOREIGN KEY  --> Ajoute une clé secondaire à la table                   *
 *                                                                         *
 * *********************************************************************** *
 *                                                                         *
 * CREATE TABLE         --> Ajoute la FK à la création de la table         *
 * ALTER TABLE ... ADD  --> Ajoute la FK après la création de la table     *
 *                                                                         *
 * ----------------------------------------------------------------------- *
 *                                                                         *
 * CONSTRAINT   --> Ajoute un nom à la constrainte                         *
 * FOREIGN KEY  --> Le champ renseigné après sera le champ qui correspond  *
 *                  à la FK                                                *
 * REFERENCES   --> Table avec le champ auquel correspond la FK            *
 *                                                                         *
 * *********************************************************************** */

 CREATE TABLE nom_table (
    #champ FOREIGN KEY [(nom_champ)] REFERENCES nom_table(champ_id_autre_table)
 )

 CREATE TABLE nom_table (
    #champ CONSTRAINT FK_nom_contrainte FOREIGN KEY [(nom_champ)] REFERENCES nom_table(champ_id_autre_table)
 )

 /* ----------------------------------------------------------------------- */

 CREATE TABLE nom_table (
    #champ,

    FOREIGN KEY (nom_champ) REFERENCES nom_table(champ_autre_table)
 )

 CREATE TABLE nom_table (
    #champ,

    CONSTRAINT FK_nom_contrainte FOREIGN KEY (nom_champ) REFERENCES nom_table(champ_id_autre_table)
 )

 /* ----------------------------------------------------------------------- */

 ALTER TABLE nom_table (
    ADD FOREIGN KEY (nom_champ) REFERENCES nom_table(champ_id_autre_table)
 ) 
 
 ALTER TABLE nom_table (
    ADD CONSTRAINT FK_nom_contrainte FOREIGN KEY (nom_champ) REFERENCES nom_table(champ_id_autre_table)
 )