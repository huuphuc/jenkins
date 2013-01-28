#!/bin/bash

rm -rf build/logs/*.xml

/talknote/php/bin/phpcpd --log-pmd build/logs/cpd.xml src/

/talknote/php/bin/phpmd src/ xml unusedcode,codesize > build/logs/pmd.xml
