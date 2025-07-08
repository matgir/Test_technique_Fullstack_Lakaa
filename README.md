# Lakaa – Test Technique

## Lancement du projet

Utilisez les commandes `make` suivantes pour interagir avec le projet via le `Makefile` et `docker-compose` :

- `make` : Lancer le projet.
- `make stop` : Arrêter les conteneurs.
- `make restart` : Arrêter puis relancer les conteneurs.
- `make rebuildstart` : Arrêter, reconstruire, puis relancer les conteneurs.
- `make prune` : Supprimer tous les contenus créés par les conteneurs.
- `make reprunestart` : Supprimer les contenus, reconstruire, puis relancer les conteneurs.

> ⚠️ **Attention** :  
> Les commandes contenant `prune` arrêtent tous les conteneurs de la machine hôte.  
> Assurez-vous de ne pas avoir d'autres conteneurs en cours d’exécution que vous souhaitez conserver.

---

## Accès à l’application

Une fois le message suivant affiché dans les logs du conteneur `lakaa_backend` :  
**`Use Ctrl-C to stop`**

📍 Accédez à l’application à l’adresse suivante :  
[http://localhost:8080]

---

## Pages disponibles

### 🥕 Food Collection  
Page destinée au responsable RSE. Elle permet de consulter les données liées aux collectes.

### 🏬 Magasin  
Page destinée au responsable de magasin pour enregistrer les actions de collecte de denrées alimentaires.

---
