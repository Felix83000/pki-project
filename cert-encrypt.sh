#!/bin/bash

read -p 'Entrez le nom du certificat (le même que le CSR) : ' cert_name

openssl ca \
    -config etc/encrypt-ca.conf \
    -in certs/$cert_name.csr \
    -out certs/$cert_name.crt \
    -extensions codesign_ext
    -enddate 20191231235959Z 
