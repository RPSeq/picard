#!/bin/bash

#LSF sets PATH and HOME (and other docker env variables)
# Reset these to avoid clashing with external software (volume or LDAP)
export HOME=/home
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export PICARD=/usr/bin/picard.jar

#If no args, enter bash session
#If args, feed to bash
if [[ $# -eq 0 ]]
    then
        /bin/bash --noprofile --norc
    else
        /bin/bash --noprofile --norc -c "$*"
fi