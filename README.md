# Structure du projet
├── Dockerfile
├── init-v001.sql
├── init-v002.sql
└── README.md
Dockerfile : Image personnalisée basée sur MySQL 9.1, copie les scripts SQL d'initialisation.
init-v001.sql : Script de création de la base formation et de la table utilisateurs.
init-v002.sql : Script d’insertion de 3 utilisateurs dans la table.

# Étapes pour builder et lancer le projet
## 1. Pré-requis
Docker installé
## 2. Configuration
Crée un fichier .env à la racine du projet
## 3 Build de l'image
docker build -t mysql-lab .
## 4 Lancement du conteneur
docker run -d --name formation-mysql --env-file .env mysql-lab
# Vérification
## Vérifier que le conteneur tourne
docker ps
## Afficher les bases de données
SHOW DATABASES;
## Afficher les tables
USE formation;
SHOW TABLES;
## Vérifier les utilisateurs créés
SELECT * FROM utilisateurs;
