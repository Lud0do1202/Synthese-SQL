
/* ************************************************************************ *
 *                                                                          *
 * ALTER DATABASE 	--> Mettre à jour la DB				                    *
 *                                                                          *
 * ************************************************************************ *
 *                                                                          *
 * MODIFY FILE 		--> Modifier un fichier									*
 *                                                                          *
 * ------------------------------------------------------------------------ *
 *                                                                          *
 * NAME             --> Nom logique du fichier ciblé                        *
 * SIZE             --> Nouvelle taille par défaut du fichier               *
 * MAXSIZE          --> Nouvellle taille maximale du fichier                *
 * FILEGROWTH       --> Nouveau pas d'incrément du fichier                  *
 *                                                                          *
 * ************************************************************************ */

 ALTER DATABASE nom_database 
 MODIFY FILE (
    NAME = nom_logique,
    SIZE = 10MB,
	MAXSIZE = 50MB,
	FILEGROWTH = 5MB
 )