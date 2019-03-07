#!/bin/bash

openssl req -new \
    -config ../etc/root-ca.conf \
    -out ../ca/root-ca.csr \
    -keyout ../ca/root-ca/private/root-ca.key

echo "Création du certificat Root CA"

openssl ca -selfsign \
    -config ../etc/root-ca.conf \
    -in ../ca/root-ca.csr \
    -out ../ca/root-ca.crt \
    -extensions root_ca_ext \
    -enddate 20301231235959Z


