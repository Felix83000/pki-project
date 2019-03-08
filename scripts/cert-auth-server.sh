#!/bin/bash

read -p 'Entrez le nom du certificat (DNS serveur : exemple.gov): ' dns

openssl ca \
    -config ../etc/auth-ca.conf \
    -in ../certs/$dns.csr \
    -out ../certs/$dns.crt \
    -extensions server_ext \
    -enddate 20200101000000Z
