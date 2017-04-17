# getsvnproject
Project made by Ghislain Cheng from ETNA-school.  

Ce programme permet de récuperer un projet entier poster précédemment sur le serveur svn.

# Installation
$ Wget "https://github.com/Mangekyou-sharingan/getsvnproject/"
mettre le script dans 

# Fonctionnement
Le programme fonctionne de deux manières :
1. Vous êtes déjà dans votre dossier svn
* Lancer le script avec votre login en paramètre 
* ex : getsvnproject login_g
2. Vous n'êtes pas dans votre dossier de svn :
* Lancer le script avec deux paramètres : login et url_svn_rendu
* ex : getsvnproject login_g url_rendu
3. -h ou --help : pour de l'aide
4. -v ou --version : version du projet
