#!/bin/bash

read -p 'Entrez le nom du csr : ' cert_name

openssl req -new \
    -config etc/codesign.conf \
    -out certs/$cert_name.csr \
    -keyout certs/$cert_name.key

echo "Succès !"
