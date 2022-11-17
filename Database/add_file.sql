
/* ************************************************************************ *
 *                                                                          *
 * ALTER DATABASE 	--> Mettre à jour la DB				                    *
 *                                                                          *
 * ************************************************************************ *
 *                                                                          *
 * ADD FILE 		--> Ajouter un fichier									*
 * TO FILEGROUP     --> Relier le fichier à un filegroup                    *
 *                                                                          *
 * ------------------------------------------------------------------------ *
 *                                                                          *
 * NAME             --> Nom logique du fichier                              *
 * FILENAME         --> Chemin d'accès au fichier                           *
 * SIZE             --> Taille par défaut du fichier                        *
 * MAXSIZE          --> Taille maximale du fichier                          *
 * FILEGROWTH       --> Pas d'incrément du fichier                          *
 *                                                                          *
 * ************************************************************************ */

ALTER DATABASE nom_database 
ADD FILE (
    NAME = nom_logique,
	FILENAME = 'C:\Program Files\Microsoft SQL Server\nom_serveur_sql\MSSQL\DATA\nom_logique.ndf',
    SIZE = 10MB,
    MAXSIZE = 50MB,
    FILEGROWTH = 5MB
)

TO FILEGROUP nom_filegroup;