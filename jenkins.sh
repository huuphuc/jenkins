#!/bin/bash

HOME_BUILD = "/data/webroot/jenkins"
RESULT = $HOME_BUILD

if [ ! -d "{$HOME_BUILD}/build" ]; then
    mkdir $RESULT/build
    mkdir $RESULT/build/logs
fi

rm -rf $RESULT/build/logs/*.xml

/data/binary/php/bin/phpcpd --log-pmd $RESULT/build/logs/cpd.xml src/

/data/binary/php/bin/phpmd src/ xml unusedcode,codesize > $RESULT/build/logs/pmd.xml
