#!/bin/bash

read -p 'Entrez le nom du certificat (DNS serveur : exemple.gov): ' dns

SAN=DNS:$dns,DNS:www.$dns \
openssl req -new \
    -config ../etc/server.conf \
    -out ../certs/$dns.csr \
    -keyout ../certs/$dns.key

echo "Succès !"
