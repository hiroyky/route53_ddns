#!/bin/sh

DOMAIN=$1
HOSTED_ZONE_ID=$2

IP_V4=`curl ifconfig.io -4`
echo "${IP_V4}  ${DOMAIN} ${HOSTED_ZONE_ID}"

aws route53 change-resource-record-sets \
--hosted-zone-id ${HOSTED_ZONE_ID} \
--change-batch "{\
\"Changes\": [\
{\
    \"Action\": \"UPSERT\", \
    \"ResourceRecordSet\": {\
        \"Name\": \"${DOMAIN}\", \
        \"Type\": \"A\", \
        \"TTL\": 300, \
        \"ResourceRecords\": [ \
            { \"Value\": \"${IP_V4}\" }
        ]\
    }\
}"
