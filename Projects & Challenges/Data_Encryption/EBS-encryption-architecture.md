+------------------------------+
|        EC2 Instance          |
+------------------------------+
            |
            v   I/O over secure channel
+------------------------------+
|      Encrypted EBS Volume    |
|  (data encrypted with KMS)   |
+------------------------------+
            |
            v   KMS key used transparently
+------------------------------+
|           AWS KMS            |
|  CMK for EBS (aws/ebs or CMK)|
+------------------------------+
