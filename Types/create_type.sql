
/* ************************************************************************ *
 *                                                                          *
 * CREATE TYPE ... FROM 	--> Créer un type                               *
 *                                                                          *
 * ************************************************************************ *
 *                                                                          *
 * base_type        --> type primaire (int, varchar, ...)                   *
 * NULL | NOT NULL  --> définit si la valeur peut être null (optionnel)     *
 *                                                                          *
 * ************************************************************************ */

 CREATE TYPE nom_type FROM base_type [NULL | NOT NULL];