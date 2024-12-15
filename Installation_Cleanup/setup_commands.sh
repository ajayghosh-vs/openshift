
# https://console.redhat.com/openshift/install   - Installation USRL


# Download Link - https://developers.redhat.com/content-gateway/rest/mirror/pub/openshift-v4/clients/crc/latest/crc-linux-amd64.tar.xz


# Secret is availble in the same folder 


# Clean up and strat server 


#untar the file

tar -vcf crc-linux-amd64.tar.xz

export PATH="$PATH:~/crc-linux-2.45.0-amd64"
crc start
crc setup
crc start

export PATH="~/.crc/bin/oc:$PATH"


# Run the below commds if the cluster not able to reach the kubeserver


crc delete -f
crc cleanup
crc delete -f
crc setup
crc start

