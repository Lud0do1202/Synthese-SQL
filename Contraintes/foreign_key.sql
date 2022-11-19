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
 * ON DELETE    --> Que faire au moment ou l'on supprime la valeur d'un    *
 *                  champ qui posséde une FK dans cette table              *
 * ON UPDATE    --> Que faire au moment ou l'on modifie la valeur d'un     *
 *                  champ qui posséde une FK dans cette table              *
 *                                                                         *
 * ----------------------------------------------------------------------- *
 *                                                                         *
 * NO ACTION    --> (Default value) renvoie une erreur                     *
 * CASCADE      --> Spécifie les rows qui utilIsaient l'ancienne valeur    *
 *                  du champ de référence                                  *
 * SET NULL     --> Set à NULL toutes les valeurs qui formaient la FK      *
 * SET DEFAULT  --> Remet la valeur par défaut pour toutes les valeurs     *
 *                  qui formaient la FK                                    *
 *                                                                         *
 * *********************************************************************** */

 CREATE TABLE nom_table (
    #champ FOREIGN KEY [(nom_champ)] REFERENCES nom_table(champ_id_autre_table)
                ON DELETE {NO ACTION | CASCADE | SET NULL | SET DEFAULT}
                ON UPDATE {NO ACTION | CASCADE | SET NULL | SET DEFAULT}
 )

 CREATE TABLE nom_table (
    #champ CONSTRAINT FK_nom_contrainte FOREIGN KEY [(nom_champ)] REFERENCES nom_table(champ_id_autre_table)
                ON DELETE {NO ACTION | CASCADE | SET NULL | SET DEFAULT}
                ON UPDATE {NO ACTION | CASCADE | SET NULL | SET DEFAULT}
 )

 /* ----------------------------------------------------------------------- */

 CREATE TABLE nom_table (
    #champ,

    FOREIGN KEY (nom_champ) REFERENCES nom_table(champ_autre_table)
        ON DELETE {NO ACTION | CASCADE | SET NULL | SET DEFAULT}
        ON UPDATE {NO ACTION | CASCADE | SET NULL | SET DEFAULT}
 )

 CREATE TABLE nom_table (
    #champ,

    CONSTRAINT FK_nom_contrainte FOREIGN KEY (nom_champ) REFERENCES nom_table(champ_id_autre_table)
        ON DELETE {NO ACTION | CASCADE | SET NULL | SET DEFAULT}
        ON UPDATE {NO ACTION | CASCADE | SET NULL | SET DEFAULT}
 )

 /* ----------------------------------------------------------------------- */

 ALTER TABLE nom_table (
    ADD FOREIGN KEY (nom_champ) REFERENCES nom_table(champ_id_autre_table)
        ON DELETE {NO ACTION | CASCADE | SET NULL | SET DEFAULT}
        ON UPDATE {NO ACTION | CASCADE | SET NULL | SET DEFAULT}
 ) 
 
 ALTER TABLE nom_table (
    ADD CONSTRAINT FK_nom_contrainte FOREIGN KEY (nom_champ) REFERENCES nom_table(champ_id_autre_table)
        ON DELETE {NO ACTION | CASCADE | SET NULL | SET DEFAULT}
        ON UPDATE {NO ACTION | CASCADE | SET NULL | SET DEFAULT}
 )