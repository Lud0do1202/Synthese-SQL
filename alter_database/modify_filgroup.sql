
/* ************************************************************************ *
 *                                                                          *
 * ALTER DATABASE 	--> Mettre à jour la DB				                    *
 *                                                                          *
 * ************************************************************************ *
 *                                                                          *
 * MODIFY FILEGROUP	--> Modifier un filgroup								*
 * DEFAULT          --> Mettre ce fichier comme par défaut                  *
 * NAME             --> Renommer ce filegroup                               *
 *                                                                          *
 * ************************************************************************ */

 ALTER DATABASE nom_database 
 MODIFY FILEGROUP nom_filegroup 
 DEFAULT 
 NAME = new_nom_filegroup
