# A propos de The Gossip Project


The Gossip Project permet de consulter les potins de THP, et d’obtenir des informations sur les auteurs de ces potins. En donnant votre nom, vous pourrez accéder à la page d’accueil énumérant tous les potins. Par ailleurs, chaque potin a sa propre page et il en est de même pour les auteurs.


#  Instructions

- Git clonez puis lancez bundle install, puis rails db:create, rails db:migrate, et enfin rails db:seed. Puis, lancez rails serveur pour afficher le site.

- Allez sur la page d’accueil et entrez votre nom : http://localhost:3000 Vous serez redirigés vers la page énumérant tous les potins !

- Pour afficher la page d’un potin en particulier, saisissez : http://localhost:3000/gossip/+numéro du potin

- Pour afficher l'auteur d’un potin en particulier, saisissez : http://localhost:3000/author/+user_id

- Et pour vérifier le projet grâce aux tests, lancez rspec !

# Auteures

- @Éloïse
- @Bérénice
