## Check RHV certificate expiration dates

- Run the script from RHV-M. 


Example output:
```
# ./cert_date.sh 
This script will check certificate expiration dates

Checking RHV-M Certificates...
=================================================
  /etc/pki/ovirt-engine/ca.pem:                          Aug  4 20:15:09 2030 GMT
  /etc/pki/ovirt-engine/certs/apache.cer:                Oct 12 18:55:18 2022 GMT
  /etc/pki/ovirt-engine/certs/engine.cer:                Apr 26 17:02:23 2023 GMT
  /etc/pki/ovirt-engine/qemu-ca.pem                      Aug  4 20:15:16 2030 GMT
  /etc/pki/ovirt-engine/certs/websocket-proxy.cer        Apr 26 17:02:24 2023 GMT
  /etc/pki/ovirt-engine/certs/jboss.cer                  Apr 26 17:02:24 2023 GMT
  /etc/pki/ovirt-engine/certs/ovirt-provider-ovn         Jul 11 20:15:15 2025 GMT
  /etc/pki/ovirt-engine/certs/ovn-ndb.cer                Jul 11 20:15:15 2025 GMT
  /etc/pki/ovirt-engine/certs/ovn-sdb.cer                Jul 11 20:15:15 2025 GMT
  /etc/pki/ovirt-engine/certs/vmconsole-proxy-helper.cer Jul 11 20:15:45 2025 GMT
  /etc/pki/ovirt-engine/certs/vmconsole-proxy-host.cer   Jul 11 20:15:45 2025 GMT
  /etc/pki/ovirt-engine/certs/vmconsole-proxy-user.cer   Jul 11 20:15:45 2025 GMT


Checking Host Certificates...

Host: amashah-rhvh8-h1.rhev.gsslab.rdu.redhat.com
=================================================
  /etc/pki/vdsm/certs/vdsmcert.pem:              May 31 18:16:51 2023 GMT
  /etc/pki/vdsm/libvirt-spice/server-cert.pem:   May 31 18:16:51 2023 GMT
  /etc/pki/vdsm/libvirt-vnc/server-cert.pem:     Sep 23 19:22:37 2025 GMT
  /etc/pki/libvirt/clientcert.pem:               May 31 18:16:51 2023 GMT
  /etc/pki/vdsm/libvirt-migrate/server-cert.pem: May 31 18:16:52 2023 GMT


Host: amashah-rhel8-h2.rhev.gsslab.rdu.redhat.com
=================================================
  /etc/pki/vdsm/certs/vdsmcert.pem:              Jul 12 20:46:06 2022 GMT
  /etc/pki/vdsm/libvirt-spice/server-cert.pem:   Jul 12 20:46:06 2022 GMT
  /etc/pki/vdsm/libvirt-vnc/server-cert.pem:     Aug  5 20:59:29 2025 GMT
  /etc/pki/libvirt/clientcert.pem:               Jul 12 20:46:06 2022 GMT
  /etc/pki/vdsm/libvirt-migrate/server-cert.pem: Jul 12 20:46:07 2022 GMT
```
