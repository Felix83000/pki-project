#!/bin/bash

read -p 'Entrez le nom du certificat : ' cert_name

openssl ca \
    -config etc/auth-ca.conf \
    -in certs/auth.csr \
    -out certs/$cert_name.crt \
    -extensions codesign_ext
