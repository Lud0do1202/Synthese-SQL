
/* ************************************************************************ *
 *                                                                          *
 * CREATE TYPE ... AS TABLE	--> Créer un type Table                         *
 *                                                                          *
 * ************************************************************************ *
 *                                                                          *
 * PRIMARY KEY 		--> Définit que ce champ est une clé primaire			*
 * CHECK			--> Ajoute une contrainte CHECK sur le champ			*
 *                                                                          *
 * ------------------------------------------------------------------------ *
 *                                                                          *
 * base_type        --> type primaire (int, varchar, ...)                   *
 * NULL | NOT NULL  --> définit si la valeur peut être null (optionnel)     *
 *                                                                          *
 * ************************************************************************ */

 CREATE TYPE nom_type AS TABLE ( 
	nom_id base_type [NULL | NOT NULL] PRIMARY KEY,
	nom_champ base_type [NULL | NOT NULL] CHECK (nom_champ in ('check-0', 'check-1', 'check-2'))
)