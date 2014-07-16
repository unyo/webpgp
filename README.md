webpgp
======

The server code for an online PGP encryption/decryption service. Private keys are stored in the database encrypted with a symmetric key, which when fetched by the webpage is decrypted using javascript. 2 Factor Auth enabled. Users can choose to uses encrypted data stored in localstorage, or stored on the server, or both.

## Hash Verification
Most recent SHA256/base64 hashes: 

- openpgp.js: poR2nF9fnBXUWRUyT0J1BV4z/64wjPlltLKyzaw1qcs=
- webpgp.rb: IYMdIRjPhSSQgUrlDyzcvMuKjmZ32sDfFNPc6LqdhYQ=