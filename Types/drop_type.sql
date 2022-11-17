
/* ************************************************************************ *
 *                                                                          *
 * DROP TYPE    --> Supprimer un type                                       *
 *                  (à condition que aucune table n'utilise encore ce type) *
 *                                                                          *
 * ************************************************************************ *
 *                                                                          *
 * IF EXISTS        --> Ajouter la condition qu'elle doit exister           *
 *                                                                          *
 * ************************************************************************ */

DROP TYPE IF EXISTS nom_perso_type;