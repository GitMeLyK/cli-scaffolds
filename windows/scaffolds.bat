@ECHO OFF
SETLOCAL ENABLEEXTENSIONS

SET VERSION=1.1
SET COMMAND_OR_PROJECT_NAME=%1
SET PROJECT_NAME=%2

SET KIT_BASE_URL=https://github.com/omelyk/Scaffold-Base-Starter-Kit.git
SET KIT_SASS_URL=https://github.com/omelyk/Scaffold-Sass-Starter-Kit.git
SET KIT_GULP_URL=https://github.com/omelyk/Scaffold-Gulp-Starter-Kit.git

SET KIT_NAME_BASE=Scaffold-Base-Starter-Kit
SET KIT_NAME_SASS=Scaffold-Sass-Starter-Kit
SET KIT_NAME_GULP=Scaffold-Gulp-Starter-Kit

IF "%COMMAND_OR_PROJECT_NAME%"=="" (
  CALL:head
  echo Creazione della cartella di progetto BASE in %KIT_NAME_BASE%;
  git clone %KIT_BASE_URL%
  cd %KIT_NAME_BASE%
  rmdir /Q /S .git
  CALL:hit
  echo Progetto pronto
  GOTO:EOF
  )

IF "%COMMAND_OR_PROJECT_NAME%"=="-base" GOTO:BASE
IF "%COMMAND_OR_PROJECT_NAME%"=="-sass" GOTO:SASS
IF "%COMMAND_OR_PROJECT_NAME%"=="-gulp" GOTO:GULP
IF "%COMMAND_OR_PROJECT_NAME%"=="-v" GOTO:VERSION
IF "%COMMAND_OR_PROJECT_NAME%"=="-version" GOTO:VERSION
IF "%COMMAND_OR_PROJECT_NAME%"=="-h" GOTO:HELP
IF "%COMMAND_OR_PROJECT_NAME%"=="-help" GOTO:HELP

IF "%PROJECT_NAME%"=="" IF NOT "%COMMAND_OR_PROJECT_NAME%"=="" (
  echo Creazione della cartella di progetto BASE in %COMMAND_OR_PROJECT_NAME%;
  git clone %KIT_BASE_URL% %COMMAND_OR_PROJECT_NAME%
  cd %COMMAND_OR_PROJECT_NAME%
  rmdir /Q /S .git
  CALL:hit
  echo Progetto pronto
  GOTO:EOF
  )

ECHO Comando %COMMAND_OR_PROJECT_NAME% non trovato

:VERSION
  ECHO Scaffold-Starter cli version %VERSION%
GOTO:EOF

:HELP
  echo Questo tool CLI serve a creare una semplice
  echo impalcatura iniziale partendo da questi tipi 
  echo di progetti base utile ad un nuovo progetto!
  echo --------------------------------------------
  echo Uso:
  echo.  scaffolds [option^|project-name] nome-progetto
  echo Opzioni
  echo. -base         Crea un progetto di base come kit di partenza del nuovo progetto da fare
  echo. -sass         Crea un progetto di base con sass come kit di partenza del nuovo progetto da fare
  echo. -gulp         Crea un progetto di base con gulp e gulp-sass come kit di partenza del nuovo progetto da fare
  echo. -h^|-help     Mostra questo aiuto 
  echo. -v^|-version  Mostra la version di Scaffolds CLI
  echo Esempio
  echo. scaffolds -gulp nuovo-progetto
  echo.     Crea una cartella con nome del progetto "nuovo-progetto"
  echo.     con tutto il kit di partenza comprensivo di gulp e gulp-sass
GOTO:EOF

:BASE
  
  CALL:head
  echo Creazione della cartella di progetto BASE in %PROJECT_NAME%;
  git clone -b %KIT_NAME_BASE% --single-branch %KIT_BASE_URL% %PROJECT_NAME%
  cd %PROJECT_NAME%
  rmdir /Q /S .git
  CALL:hit
  echo Progetto pronto

GOTO:EOF

:SASS

  CALL:head
  echo Creazione della cartella di progetto SASS in %PROJECT_NAME%;
  git clone %KIT_SASS_URL% %PROJECT_NAME%
  cd %PROJECT_NAME%
  rmdir /Q /S .git
  CALL:hit
  echo Progetto pronto
  
GOTO:EOF

:GULP
  
  CALL:head
  echo Creazione della cartella di progetto GULP in %PROJECT_NAME%;
  git clone -b %KIT_NAME_GULP% --single-branch %KIT_GULP_URL% %PROJECT_NAME%
  cd %PROJECT_NAME%
  rmdir /Q /S .git
  CALL:hit
  npm install
  bower install
  echo Progetto pronto
  
GOTO:EOF

REM Conteggio le volte che lo script e' stato chiamato
:hit
curl -i --silent -m 1 -X GET http://webwwwppp.com:2020/hit
GOTO:EOF

:head
echo Scaffolds Starter Kit CLI
echo -------------------------
GOTO:EOF
