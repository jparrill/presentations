#!/bin/bash

## Variables to fill
host_fqdn=$(hostname --long)
path=/opt/registry
cert_c="US"            # Country Name (C, 2 letter code)
cert_s="California"    # Certificate State (S)
cert_l="SOL"           # Certificate Locality (L)
cert_o="ACME Corp"     # Certificate Organization (O)
cert_ou="IT"           # Certificate Organizational Unit (OU)
cert_cn="${host_fqdn}" # Certificate Common Name (CN)
mkdir -p ${path}/{auth,certs,data}

openssl req -newkey rsa:4096 -nodes -sha256 -keyout ${path}/certs/domain.key -x509 -days 3650 -out ${path}/certs/domain.crt -addext "subjectAltName = DNS:${host_fqdn}"
-subj "/C=${cert_c}/ST=${cert_s}/L=${cert_l}/O=${cert_o}/OU=${cert_ou}/CN=${cert_cn}"

sudo cp ${path}/certs/domain.crt /etc/pki/ca-trust/source/anchors/
sudo update-ca-trust extract
htpasswd -bBc ${path}/auth/htpasswd dummy dummy
