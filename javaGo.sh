#!/bin/bash

ASADMIN="/home/greg/code/java/glassfish4/glassfish/bin/asadmin"

PROJECT="/home/greg/workspace/InventoryManagementSystem"

cd $PROJECT; ant; cd -

exec $ASADMIN --host 192.168.0.15 --user admin --port 4848 --secure deploy --force=true "$PROJECT/dist/web.war"
