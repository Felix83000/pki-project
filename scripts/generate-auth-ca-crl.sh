#!/bin/bash

openssl ca -gencrl \
    -config ../etc/auth-ca.conf \
    -out ../crl/auth-ca.crl
