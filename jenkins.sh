#!/bin/bash

rm -rf build/logs/*.xml

/data/binary/php/bin/phpcpd --log-pmd build/logs/cpd.xml src/

/data/binary/php/bin/phpmd src/ xml unusedcode,codesize > build/logs/pmd.xml
