#!/bin/sh

# Generate the default configs if there isn't one specified.
mkdir -p /home/znc
chown -R znc:znc /home/znc

flags=''
if [[ ! -f /home/znc/.znc ]];
then
    flags='--makeconf'
fi

# Start znc
exec su - znc -s /bin/sh -c "znc $flags --foreground"
