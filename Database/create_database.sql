
/* ************************************************************************ *
 *                                                                          *
 * CREATE DATABASE  --> Création d'une base de donnée                       *
 *                                                                          *
 * ************************************************************************ *
 *                                                                          *
 * ON PRIMARY       --> Fichier d'entrée (.mdf)                             *
 * FILEGROUP        --> Filegroup (.ndf)                                    *
 * LOG ON           --> Fichier log (.ldf)                                  *
 * Collate          --> Specifie une collation                              *
 *                          (SQL_Latin1_General_CP1_CI_AI || FRENCH_CI_AI)  *
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


CREATE DATABASE nom_database    
ON PRIMARY (
	NAME = MDF_primary,
	FILENAME = 'C:\Program Files\Microsoft SQL Server\nom_serveur_sql\MSSQL\DATA\MDF_primary.mdf',
	SIZE = 10MB,
	MAXSIZE = 50MB,
	FILEGROWTH = 5MB
),

FILEGROUP nom_filegroup (
	NAME = NDF_nom_filegroup,
	FILENAME = 'C:\Program Files\Microsoft SQL Server\nom_serveur_sql\MSSQL\DATA\NDF_filegroup.ndf',
	SIZE = 10MB,
	MAXSIZE = 50MB,
	FILEGROWTH = 5MB
)

LOG ON (
	NAME = LOG_nom_database,
	FILENAME = 'C:\Program Files\Microsoft SQL Server\nom_serveur_sql\MSSQL\DATA\LOG_nom_database.ldf',
	SIZE = 1MB,
	MAXSIZE = 10MB,
	FILEGROWTH = 1MB
)

COLLATE nom_collation;