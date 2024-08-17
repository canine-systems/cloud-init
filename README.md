# cloud-init
Cloud-init files that can be included via [`#include`](https://cloudinit.readthedocs.io/en/latest/explanation/format.html).

# Cirrus CLI usage

To set up a Cirrus CLI worker using cloud-init and this repository, you need to use both `vendor-data` and `user-data`.

vendor-data:

```
#include
https://raw.githubusercontent.com/canine-systems/cloud-init/main/debian/cirrus-cli.txt
```

user-data:

```
#!/bin/sh
sh /opt/bin/cirrus-worker-setup.sh "CIRRUS POOL REGISTRATION TOKEN"
```
