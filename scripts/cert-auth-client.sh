#!/bin/bash

read -p 'Entrez le nom du certificat (le même que le CSR) : ' cert_name

openssl ca \
    -config ../etc/auth-ca.conf \
    -in ../certs/$cert_name.csr \
    -out ../certs/$cert_name.crt \
    -policy extern_pol \
    -extensions client_ext \
    -enddate 20200101000000Z 
