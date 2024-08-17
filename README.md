# cloud-init
Cloud-init files that can be included via [`#include`](https://cloudinit.readthedocs.io/en/latest/explanation/format.html).

# Cirrus CLI usage

To set up a Cirrus CLI worker using cloud-init and this repository, set up your user-data like this:

```
#!/bin/sh

apt-get install -y wget &&
wget https://raw.githubusercontent.com/canine-systems/cloud-init/main/cirrus-worker/include.txt -O- | sh &&
/opt/bin/cirrus-worker-setup.sh "CIRRUS POOL REGISTRATION TOKEN"
```
