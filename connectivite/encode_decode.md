####
# ASN1 Compiler : Encode/Decode

<br/>

## Pré-requis
Pour installer le compilateur ASN1, il suffit de lancer le script `install_asn1c.sh` ou de suivre les instructions sur [ce lien](https://github.com/vlm/asn1c).

<br/>

***
## Encode
Il faut en amont préparer un fichier main.c, contenant le code d'encodage. Pour compiler et obtenir les fichiers source C, il faut utiliser la commande suivante :

    asn1c -no-gen-example <filename>.asn1

Pour ensuite créer le fichier binaire permettant d'encoder notre fichier \<filename\>.asn1, il faut utiliser la commande :

    cc -I. -o <encoder_filename> *.c

Pour encoder le fichier asn1, il faut ensuite exécuter :

    ./<encoder_filename> <encoded_filename>

<br/>

***
## Decode
Comme pour l'encodage, il faut préparer un fichier main.c avec cette fois-ci le code de décodage. Il suffit ensuite d'utiliser la commande suivante :

    cc -I. -o <decoder_filename> *.c

Pour décoder le fichier obtenu, il suffit d'exécuter :

    ./<decoder_filename> <encoded_filename>