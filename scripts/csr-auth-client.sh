#!/bin/bash

read -p 'Entrez le nom du certificat : ' cert_name

openssl req -new \
    -config ../etc/client.conf \
    -out ../certs/$cert_name.csr \
    -keyout ../certs/$cert_name.key

echo "Succès !"
