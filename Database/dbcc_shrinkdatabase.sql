
/* ************************************************************************ *
 *                                                                          *
 * DBCC SHRINKDATABASE  --> Réduire la taille de tous les fichiers de la DB *
 *                                                                          *
 * ************************************************************************ *
 *                                                                          *
 * nom_database     --> Nom de la DB                                        *
 * 50               --> Pourcentage d'espace libre après réduction          *
 * NOTRUNCATE       --> Ne réduit pas les fichiers mais repositionne les    *
 *                      pages occupées en haut du fichier                   *
 * TRUNCATEONLY     --> Ne réduit que de l'espace libre en fin de fichier   *
 *                                                                          *
 * ************************************************************************ */

 DBCC SHRINKDATABASE(
    nom_database,
    50,
    NOTRUNCATE | TRUNCATEONLY
 )