#!/bin/bash

read -p 'Entrez le nom du certificat (le même que le CSR) : ' cert_name

openssl ca \
    -config ../etc/encrypt-ca.conf \
    -in ../certs/$cert_name.csr \
    -out ../certs/$cert_name.crt \
    -extensions codesign_ext \
    -enddate 20200101000000Z 

cat ../certs/$cert_name.crt ../ca/encrypt-ca.crt ../ca/root-ca.crt > \
    ../certs/$cert_name-chain.pem