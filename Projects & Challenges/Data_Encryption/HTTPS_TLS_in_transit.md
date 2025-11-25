Client (Browser)                      Server / ALB
----------------                      -------------
    |   ClientHello (TLS versions, ciphers, SNI)
    | ------------------------------------------>
    |   ServerHello (chosen cipher, cert)
    | <-----------------------------------------
    |   Key exchange, Finished messages
    | <------------------------------------------>
    |   Encrypted HTTP (GET / POST / responses)
    | <=========================================> (ciphertext)
