#!/bin/bash

openssl ca -gencrl \
    -config ../etc/encrypt-ca.conf \
    -out ../crl/encrypt-ca.crl

echo "Succès !"