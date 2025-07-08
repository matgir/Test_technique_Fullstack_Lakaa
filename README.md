Lakaa test technique

make : lancer le projet par le biais du make file et du docker-compose

make stop : arreter les containers

make restart : arreter puis relancer les containers

make rebuildstart : arreter, build de nouveau et lancer les containers

make prune :	effacer tout les contenus creer par les containers
make reprunestart :	effacer tout les contenus creer par les containers et build de nouveau ainsi que lancer les containers

command contenant "prune" : utiliser avec attention car arrete l'entiereter des containers sur la machines hote, verifier si vous n'en avez pas d'autre qui tourne que vous aineriez conserver

http://localhost:8080 : acceder à l'application
