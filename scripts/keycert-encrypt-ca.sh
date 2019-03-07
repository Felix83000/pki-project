#!/bin/bash

openssl req -new \
    -config ../etc/encrypt-ca.conf \
    -out ../ca/encrypt-ca.csr \
    -keyout ../ca/encrypt-ca/private/encrypt-ca.key

echo "Création du certificat Encrypt CA"

openssl ca \
    -config ../etc/root-ca.conf \
    -in ../ca/encrypt-ca.csr \
    -out ../ca/encrypt-ca.crt \
    -extensions signing_ca_ext \
    -enddate 20301231235959Z 
