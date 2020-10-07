#!/bin/bash
docker run -p 10808:10808 -v /mnt/config/v2ray/config.json.china2:/etc/v2ray/config.json -v /mnt/config/ajiasu/ajiasu.conf:/etc/ajiasu.conf -d v-china2
