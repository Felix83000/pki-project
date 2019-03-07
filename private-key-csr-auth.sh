#!/bin/bash

openssl req -new \
    -config etc/codesign.conf \
    -out certs/auth.csr \
    -keyout certs/auth.key

echo "Succès !"
