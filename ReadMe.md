# Alexandre Dosseto
## _Openclassrooms,P6,Snowtricks_

[![Codacy Badge](https://app.codacy.com/project/badge/Grade/aad529ba4a204a81a1180000a46dd001)](https://app.codacy.com/gh/Alex-dos/OC_P6_SnowTricks/dashboard?utm_source=gh&utm_medium=referral&utm_content=&utm_campaign=Badge_grade)

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
http://127.0.0.1:8000/
```


## Info

Vous pouvez accéder aux détails de chaque trick en cliquant sur son nom dans la carte.
Vous pouvez vous inscrire et vous connecter.
Une fois connecté, vous pouvez laisser un commentaire pour chaque trick et utiliser les fonctionnalités CRUD si nécessaire.

## Attention

Pour l'affichage des pages d'erreurs 404 ou autres, pensez à passer votre fichier .env et .env.local ligne 17 en "APP_ENV=prod"
