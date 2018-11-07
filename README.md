# Scaffolds CLI
La linea di comando per creare al volo un impalcatura di una directory  strutturata con i file necessari
per iniziare un nuovo progetto pilota partendo da una base dei file necessari per lo svolgimento dell'opera.

# I Kit a disposizione ad adesso sono.:

A) [Base Starter Kit](http://devtipsstarterkit.com) da [@DevTipsShow](https://twitter.com/DevTipsShow)
B) [Sass Starter Kit](http://devtipsstarterkit.com) da [@DevTipsShow](https://twitter.com/DevTipsShow)
C) [Gulp Starter Kit](http://devtipsstarterkit.com) da [@DevTipsShow](https://twitter.com/DevTipsShow)

## A) Sono una serie di file di base HTML e css per iniziare un nuovo sito da 0 
## B) Sono una serie di file di base HTML e css per iniziare un nuovo sito da 0 utilizzando il precompilatore sass 
## C) Sono una serie di file di base HTML e css per iniziare un nuovo sito da 0 con dentro il task manager gulp e il suo precompilatre gulp-sass 

## Install
Per installare questa versione di Scadffold CLI devi scaricarla per la versione del tuo sistema operativo.
Segui poi le istruzioni sotto in base alla versione del Sistema Operativo.

#### ** Per Mac e Linux
Eseguire questi comandi su una finestra di terminale 
da questa posizione `/usr/local/bin` per applicare i permessi utente prima di lanciare lo script scaffolds.sh.
```
sudo cp scaffolds.sh /usr/local/bin/scaffolds
sudo chmod 700 /usr/local/bin/scaffolds
```
Adesso puoi avviare sempre dentro il terminale il comando scaffolds.sh. 
Eventualmente non funziona a primo colpo chiudi il terminale e riaprilo per eseguire.

#### Windows
Gli utenti di Windows possono mettere lo script ovunque si voglia. Per esempio in `C:\prompt-utils`. 
Quindi è necessario includere la directory sul percorso **path** var. Vai a Esplora risorse, fai clic su Computer, fai clic sulle proprietà, fai clic su Impostazioni di sistema avanzate sul lato sinistro, fai clic sul pulsante Variabili d'ambiente, trova la variabile percorso su Variabili utente e fai clic su di essa, sul Valore variabile inserisci un **;** alla fine e incolla l'indirizzo della cartella degli script come questo `;C:\prompt-utils`. 
Chiudi tutte le finestre di dialogo e apri nuovamente il prompt dei comandi e digita `scaffolds -v`. Dovrebbe restituirti la versione dello script, a questo punto nella cartella dove vuoi che sia creato un nuovo progetto pilota esegui lo script con -help eventualemtene per avere l'help in linea, e accertati di avere i permessi utente in scrittura corretti prima di esguirlo.

## Uso
```
  Questo tool CLI serve a creare una semplice
  impalcatura iniziale partendo da questi tipi 
  di progetti base utile ad un nuovo progetto!
  --------------------------------------------
  Uso:
    scaffolds [option^|project-name] nome-progetto
  Opzioni
   -base         Crea un progetto di base come kit di partenza del nuovo progetto da fare
   -sass         Crea un progetto di base con sass come kit di partenza del nuovo progetto da fare
   -gulp         Crea un progetto di base con gulp e gulp-sass come kit di partenza del nuovo progetto da fare
   -h^|-help     Mostra questo aiuto 
   -v^|-version  Mostra la version di Scaffolds CLI
  Esempio
   scaffolds -gulp nuovo-progetto
       Crea una cartella con nome del progetto "nuovo-progetto"
       con tutto il kit di partenza comprensivo di gulp e gulp-sass
```

## Feedback
Se ci sono errori, apri il problema su questo github oppure mandami una mail.

Buon lavoro!!
