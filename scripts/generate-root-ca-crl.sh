#!/bin/bash

openssl ca -gencrl \
    -config ../etc/root-ca.conf \
    -out ../crl/root-ca.crl

echo "Succès !"