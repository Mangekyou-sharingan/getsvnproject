#!/bin/bash                                                                                                           

echo "#################################################################################"
echo "## Install getsvnproject ETNA                                                  ##"
echo "##                                                                             ##"
echo "## Made by cheng_g                                                             ##"
echo "## mail   <cheng_g@etna-alternance.net>                                        ##"
echo "#################################################################################"

WHITE="\033[0m"
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
BLUE="\033[0;34m"
MAGENTA="\033[0;35m"
CYAN="\033[0;36m"

BOLD="\033[1m"
BRED="\033[1;31m"
BGREEN="\033[1;32m"
BYELLOW="\033[1;33m"
BBLUE="\033[1;34m"
BMAGENTA="\033[1;35m"
BCYAN="\033[1;36m"

echo -e $BCYAN"Installation du script getsvnproject en cours..."$WHITE

#test $HOME/.config/norme || mkdir -p $HOME/.config/norme                                                             
#test $HOME/.config/norme/malloc || mkdir -p $HOME/.config/norme/malloc                                               
login=$(whoami)
lastdir=$(pwd)

cd $HOME
if [ -d "bin" ];then
    #cp ./getsvnproject "/home/$login/bin/"                                                                           
    echo "le dossier existe déjà"
else
    mkdir bin
    #cp ./getsvnproject "/home/$login/bin/"                                                                           
fi

chmod +x ./getsvnproject
cp ./getsvnproject $HOME/bin/
nbpath=(cat .bashrc | grep  "^export PATH=$PATH:$HOME/bin$" | wc -l)
if [ $nbpath -eq 0 ];then
    echo "export PATH=$PATH:$HOME/bin" >> $HOME/.bashrc
else
    echo "Votre environnemen linuxt est déjà configuré"
fi

echo -e $BGREEN"installation terminé!!"$WHITE
