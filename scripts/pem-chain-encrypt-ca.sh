#!/bin/bash

cat ../ca/encrypt-ca.crt ../ca/root-ca.crt > \
    ../ca/encrypt-ca-chain.pem

echo "Succès !"
