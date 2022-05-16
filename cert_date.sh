#!/bin/bash
echo "This script will check certificate expiration dates"
echo
echo "Checking RHV-M Certificates..."
echo "=================================================";
ca=`openssl x509 -in /etc/pki/ovirt-engine/ca.pem -noout -enddate| cut -d= -f2`
echo "  /etc/pki/ovirt-engine/ca.pem:            $ca"
apache=`openssl x509 -in /etc/pki/ovirt-engine/certs/apache.cer -noout -enddate| cut -d= -f2`
echo "  /etc/pki/ovirt-engine/certs/apache.cer:  $apache"
engine=`openssl x509 -in /etc/pki/ovirt-engine/certs/engine.cer -noout -enddate| cut -d= -f2`
echo "  /etc/pki/ovirt-engine/certs/engine.cer:  $engine"
echo

hosts=`/usr/share/ovirt-engine/dbscripts/engine-psql.sh -t -c "select vds_name from vds;" | xargs`
echo
echo "Checking Host Certificates..."
echo

for i in $hosts;
        do echo "Host: $i";
        echo "=================================================";
        vdsm=`ssh -i  /etc/pki/ovirt-engine/keys/engine_id_rsa root@${i} 'openssl x509 -in /etc/pki/vdsm/certs/vdsmcert.pem -noout -enddate' | cut -d= -f2`
        echo -e "  /etc/pki/vdsm/certs/vdsmcert.pem:            $vdsm";

        spice=`ssh -i  /etc/pki/ovirt-engine/keys/engine_id_rsa root@${i} 'openssl x509 -in /etc/pki/vdsm/libvirt-spice/server-cert.pem -noout -enddate' | cut -d= -f2`
        echo -e "  /etc/pki/vdsm/libvirt-spice/server-cert.pem: $spice";

        vnc=`ssh -i  /etc/pki/ovirt-engine/keys/engine_id_rsa root@${i} 'openssl x509 -in /etc/pki/vdsm/libvirt-vnc/server-cert.pem -noout -enddate' | cut -d= -f2`
        echo -e "  /etc/pki/vdsm/libvirt-vnc/server-cert.pem:   $vnc";

        libvirt=`ssh -i  /etc/pki/ovirt-engine/keys/engine_id_rsa root@${i} 'openssl x509 -in /etc/pki/libvirt/clientcert.pem -noout -enddate' | cut -d= -f2`
        echo -e "  /etc/pki/libvirt/clientcert.pem:             $libvirt";

        echo;
        echo;
done
