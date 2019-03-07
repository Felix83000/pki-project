#!/bin/bash

cat ../ca/auth-ca.crt ../ca/root-ca.crt > \
    ../ca/auth-ca-chain.pem

echo "Succès !"
