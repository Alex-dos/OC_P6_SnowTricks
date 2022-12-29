# Alexandre Dosseto
## _Openclassrooms,P6,Snowtricks_

[![Codacy Badge](https://app.codacy.com/project/badge/Grade/29687102e67e4a9289006ad981a23461)](https://www.codacy.com/gh/Alex-dos/OC_P6_SnowTricks/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=Alex-dos/OC_P6_SnowTricks&amp;utm_campaign=Badge_Grade)

## Installation

Ouvrez votre terminal et rendez-vous dans le dossier du serveur local en tapant la commande suivante :

```sh
cd /wamp64/www
```

Installez le dépôt Git en tapant la commande suivante :

```sh
git clone https://github.com/Alex-dos/OC_P6_SnowTricks.git
```

Rendez-vous dans le dossier du dépôt cloné et installez les dépendances de Symfony en tapant les commandes suivantes :

```sh
cd OC_P6_SnowTricks
composer install
```

Configurez correctement le fichier .env ou .env.local en remplaçant les valeurs db_user, db_password et db_name avec vos propres identifiants d'utilisateur, mot de passe et nom de base de données MySQL.

Créez la base de données en tapant les commandes suivantes :
```sh
php bin/console doctrine:database:create
php bin/console doctrine:schema:update --force
```

Chargez les fixtures en tapant la commande suivante :
```sh
php bin/console doctrine:fixtures:load
```

Pour accéder à l'index, ouvrez votre navigateur et entrez l'adresse suivante :
```sh
http://localhost/P6SnowTricks/home/
```


## Info

Vous pouvez accéder aux détails de chaque trick en cliquant sur son nom dans la carte.
Vous pouvez vous inscrire et vous connecter.
Une fois connecté, vous pouvez laisser un commentaire pour chaque trick et utiliser les fonctionnalités CRUD si nécessaire.
