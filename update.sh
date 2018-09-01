scp ./server/etc/nginx/conf.d/https.conf root@catcat.io:/etc/nginx/conf.d/default.conf

# scp ./server/var/www/html/stellar.toml root@catcat.io:/var/www/html/stellar.toml
# scp ./server/var/www/html/privacy_policy.html root@catcat.io:/var/www/html/privacy_policy.html
# scp ./server/var/www/html/index.html root@catcat.io:/var/www/html/index.html
# scp ./server/var/www/html/BOT0101/index.html root@catcat.io:/var/www/html/BOT0101/index.html
# scp ./public/fb_ask_permission.html root@catcat.io:/var/www/html/fb_ask_permission.html
ssh root@catcat.io "nginx -t && nginx -s reload"

# scp -r ./stellarkit-federation/ root@catcat.io:~/stellarkit-federation/

# ssh root@catcat.io "mkdir test"
# scp ./test/federation.js root@catcat.io:~/test/federation.js
# scp ./test/Dockerfile root@catcat.io:~/test/Dockerfile
