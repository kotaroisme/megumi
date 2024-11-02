#!/bin/bash
## manual run in server
# mkdir web
# cd web
# mkdir -p volumes/nginx/conf
# mkdir -p volumes/nginx/ssl


scp config/Makefile  deployer@45.77.255.242:/home/deployer/web
scp config/deploy.sh deployer@45.77.255.242:/home/deployer/web
# scp .env deployer@45.77.255.242:/home/deployer/web

scp docker-compose.yml deployer@45.77.255.242:/home/deployer/web

# scp config/ssl/fullchain.pem deployer@45.77.255.242:/home/deployer/web/volumes/nginx/ssl/fullchain.pem
# scp config/ssl/privkey.pem deployer@45.77.255.242:/home/deployer/web/volumes/nginx/ssl/privkey.pem

scp config/nginx.conf deployer@45.77.255.242:/home/deployer/web/volumes/nginx/conf/default.conf

## manual run in server
# chmod +x Makefile
# chmod +x deploy.sh
