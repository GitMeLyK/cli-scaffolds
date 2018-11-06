#!/bin/bash

VERSION="1.1";
COMMAND_OR_PROJECT_NAME=$1;
PROJECT_NAME=$2;

KIT_BASE_URL="https://github.com/omelyk/Scaffold-Base-Starter-Kit.git";
KIT_SASS_URL="https://github.com/omelyk/Scaffold-Sass-Starter-Kit.git";
KIT_GULP_URL="https://github.com/omelyk/Scaffold-Gulp-Starter-Kit.git";

KIT_NAME_BASE="Scaffold-Base-Starter-Kit";
KIT_NAME_SASS="Scaffold-Sass-Starter-Kit";
KIT_NAME_GULP="Scaffold-Gulp-Starter-Kit";

# Conteggio delle volta usato
hit() {
  curl --silent -m 1 -X GET http://wedffd.d..com:2020/hit
}
# Conteggio delle volte usato
head() {
  echo "Scaffolds Starter Kit CLI";
  echo "-------------------------";
}

# echo "Nome Progetto: $projectName" ;
if [[ -z "$COMMAND_OR_PROJECT_NAME" ]]; then
  head;
  echo "Creazione della cartella di progetto BASE in $KIT_NAME_BASE";
  git clone $KIT_BASE_URL;
  cd $KIT_NAME_BASE;
  rm -rf .git;
  hit;
  echo 'Progetto pronto';
  exit;
fi
if [ -z "$PROJECT_NAME" ] && [ ! -z "$COMMAND_OR_PROJECT_NAME" ]; then
  head;
  echo "Creazione della cartella di progetto BASE in $COMMAND_OR_PROJECT_NAME";
  git clone $KIT_BASE_URL $COMMAND_OR_PROJECT_NAME;
  cd $COMMAND_OR_PROJECT_NAME;
  rm -rf .git;
  hit;
  echo 'Progetto pronto';
  exit;
fi

case $COMMAND_OR_PROJECT_NAME in
  -v )
    echo "ECHO scaffolds cli version $VERSION"
    exit;;
  -version )
    echo "ECHO scaffolds cli version $VERSION"
    exit;;
  -h )
  -help )  
    echo " Questo tool CLI serve a creare una semplice";
    echo " impalcatura iniziale partendo da questi tipi ";
    echo " di progetti base utile ad un nuovo progetto!";
    echo " --------------------------------------------";
    echo " Uso:";
    echo "  scaffolds [option^|project-name] nome-progetto";
    echo " Opzioni";
    echo " -base         Crea un progetto di base come kit di partenza del nuovo progetto da fare";
    echo " -sass         Crea un progetto di base con sass come kit di partenza del nuovo progetto da fare";
    echo " -gulp         Crea un progetto di base con gulp e gulp-sass come kit di partenza del nuovo progetto da fare";
    echo " -h^|-help     Mostra questo aiuto ";
    echo " -v^|-version  Mostra la version di Scaffolds CLI";
    echo " Esempio";
    echo "  scaffolds -gulp nuovo-progetto";
    echo "     Crea una cartella con nome del progetto \"nuovo-progetto\"";
    echo "     con tutto il kit di partenza comprensivo di gulp e gulp-sass";
    exit;;  
  -base )
    head;
    echo "Creazione della cartella di progetto BASE in $PROJECT_NAME";
    git clone -b $KIT_NAME_BASE --single-branch $KIT_BASE_URL $PROJECT_NAME;
    cd $PROJECT_NAME;
    rm -rf .git;
    hit;
    echo 'Progetto pronto';
    exit;;
  -sass )
    head;
    echo "Creazione della cartella di progetto SASS in $PROJECT_NAME";
    git clone $KIT_BASE_URL $PROJECT_NAME;
    cd $PROJECT_NAME;
    rm -rf .git;
    hit;
    echo 'Progetto pronto';
    exit;;
  -gulp )
    head;
    echo "Creazione della cartella di progetto GULP in $PROJECT_NAME";
    git clone -b $KIT_NAME_GULP --single-branch $KIT_GULP_URL $PROJECT_NAME;
    cd $PROJECT_NAME;
    rm -rf .git;
    hit;
    npm install
    bower install
    echo 'Progetto pronto';
    exit;;
  * )
    echo 'Opzione ' $COMMAND_OR_PROJECT_NAME ' non riconosciuto';;
esac
