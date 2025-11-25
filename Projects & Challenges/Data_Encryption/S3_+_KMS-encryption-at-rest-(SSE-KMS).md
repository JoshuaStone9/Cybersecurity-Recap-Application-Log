           +-------------+
           |   User      |
           +------+------+ 
                  |
                  | 1. PUT Object (no plaintext key)
                  v
          +-------+--------+
          |      S3        |
          |  (Bucket)      |
          +-------+--------+
                  |
                  | 2. "Generate data key" request
                  v
        +---------+----------+
        |      AWS KMS       |
        | CMK: arn:...:key/… |
        +----+-----------+---+
             |           |
   3a. Data key (plaintext)   3b. Data key (encrypted)
             |           |
             v           |
       +-----+-----------+---------------------------+
       | S3 uses plaintext data key to encrypt data  |
       | Stores: encrypted object + encrypted data key|
       +---------------------------------------------+
