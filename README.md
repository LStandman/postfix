# Postfix Alpine Docker
A lean alpine docker for Postfix, which automatically sets up a chroot environment on start.

Configure with postconf, or bind mount config from the host into /etc/postfix/.

For logging, bind mount /dev/log:/dev/log.

Note that if you dynamically change the chroot folder you must manually set up the chroot environment.
