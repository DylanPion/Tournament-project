# Initialisation de la base de données :

db:create

## Ordre des migrations nécessitant un ordre précis :

rails db:migrate:up VERSION=20250504163608
rails db:migrate:up VERSION=20250504163448
rails db:migrate:up VERSION=20250504163350
rails db:migrate:up VERSION=20250504163528

## Exécution du reste des migratons :

db:migrate

# Route à testé :

<================================================= Parties Equipes =================================================================>
/teams : Tableau de la liste des équipes avec leurs noms et la possibilité de modifié et supprimé l'équipe.
/teams/new : Création d'une équipe avec un nom.
/teams/[id] : Modification d'une équipe. (Uniquement le nom, la modification des joeurs se fait directement depuis la liste des joueurs).
Suppression ne fonctionne pas

<================================================= Parties Joueurs =================================================================>

Accessible depuis le bouton 'Show PLayers' d'une équipe depuis la liste des équipes
/teams/[id]/player : Affiche la liste des joueurs
/teams/[id]/player/new : Créer un joueur avec nom prénom, niveau et role
/teams/[id]/player/[id] : Modifie un joueur avec nom prénom, niveau et role
Suppression ne fonctionne pas

<================================================= Parties Match =================================================================>

# Note :

Le style de l'application est vraiment moche mais suffissant pour tester les features. Comme vous l'aviez dit en cours c'est un cours de Ruby et non de style, j'ai préférai passé du temps sur Ruby que du style css.

# A faire plus tard :

Pour améliorer l'application je suis conscient qu'il faudrait faire les choses suivantes avec un peu plus de temps sur le développement, c'est compliqué niveau temps en ce moment avec mon alternance chez IBM nous faisons une grosse migration bancaire.

- Testé et mettre une validation de données sur les formulaires.
- Améliorer le style.
- Corriger la suppression des différents éléments, je ne sais pas pourquoi ça ne fonctionne pas
- Mettre en français si besoin
- Corriger l'affichage du rôle, j'affiche la value du rôle plutôt que le label
- Vérification que lors de la création d'un match l'équipe à domicile et extérieur ne soit pas la même
- Saisir le résultat d'un match dans le tableau
- Faire le score
# Tournament-project
