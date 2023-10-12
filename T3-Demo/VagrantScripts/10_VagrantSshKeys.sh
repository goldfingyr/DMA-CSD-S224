#!/bin/bash

# Vanilla vagrant keys to allow for github access

[ -d /home/vagrant ] && MYHOME=/home/vagrant || MYHOME="$HOME"

[ -d $MYHOME/.ssh ] || mkdir $MYHOME/.ssh
cat > $MYHOME/.ssh/id_rsa <<EOF
-----BEGIN OPENSSH PRIVATE KEY-----
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
-----END OPENSSH PRIVATE KEY-----
EOF

cat > $MYHOME/.ssh/id_rsa.pub <<EOF 
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDO5s0+u1bLQiJZ8lxAuDpnj17nkarUrP1M7ij6KODsW+lOX8hS0/DiBhc0cz5Jx9X+HyI4pc0U2rkV3k4RaOC3ofkRYFyMj0z17zFwy3g5GU/K1DIEZ6DQgSXfjOBIO5ZJwWE7oKoMQ9VLKmmx/Yyu9Pv/j9XBMLChHcRb+BeB9SLcy1pcAOJj+kpzvF+o1/WE0uhmQw4Gw0reFbBe2lnEXGBkJ7+aTh8lm1E336Yx2o37SdkkQc/r/8WnaCvnQ0K4h+3lnje2lVMe2fRFNdc3sntYWeobNSdru/dCW3cfkpqscFV9iQ9rZ4C34Vi+vfZg/NfW4Zaz3LX42yHZZ/eLsALLfwfCu9b2OCul6m5/Ku1SuLJQT3LD3kZSEsalS0HljyzWz4h+XCMo3XpJRo4KzS2lWBT5ub7NYf4IigQKCwX71GWUuLLOsdMFB2+uivhU9u92kYHL3Be3A5mKaU/QihGPehxj7ZI7JMZbXufKyySMATtikHYvTUrD4OKCto0= vagrant@vagrant
EOF

[ -d /home/vagrant ] && chown vagrant:vagrant /home/vagrant/.ssh/id_rsa*
chmod 600 $MYHOME/.ssh/id_rsa
chmod 644 $MYHOME/.ssh/id_rsa.pub
