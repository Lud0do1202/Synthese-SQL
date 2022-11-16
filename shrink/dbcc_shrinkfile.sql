
/* ************************************************************************ *
 *                                                                          *
 * DBCC SHRINKFILE  --> Réduire la taille d'un fichier                      *
 *                                                                          *
 * ************************************************************************ *
 *                                                                          *
 * nom_fichier      --> Nom logique du fichier                              *
 * EMPTYFILE        --> Déplace les données du fichier dans les autres      *
 *                      fichiers du même filegroup. (Peut être supprimer    *
 *                      par après avec ALTER DATABASE nom_db REMOVE FILE)   *
 * 50MB             --> Taille souhaitée après réduction                    *
 * NOTRUNCATE       --> Ne réduit pas le fichier mais repositionne les      *
 *                      pages occupées en haut du fichier                   *
 * TRUNCATEONLY     --> Ne réduit que de l'espace libre en fin de fichier   *
 *                                                                          *
 * ************************************************************************ */

 DBCC SHRINKFILE(
    nom_fichier,
    EMPTYFILE,
    50MB,
    NOTRUNCATE | TRUNCATEONLY
 )