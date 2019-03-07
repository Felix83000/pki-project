#!/bin/bash

openssl req -new \
    -config ../etc/auth-ca.conf \
    -out ../ca/auth-ca.csr \
    -keyout ../ca/auth-ca/private/auth-ca.key

echo "Création du certificat Auth CA"

openssl ca \
    -config ../etc/root-ca.conf \
    -in ../ca/auth-ca.csr \
    -out ../ca/auth-ca.crt \
    -extensions signing_ca_ext \
    -enddate 20301231235959Z 
