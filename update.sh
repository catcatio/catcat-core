scp ./server/etc/nginx/conf.d/https.conf root@catcat.io:/etc/nginx/conf.d/default.conf
# scp ./server/var/www/html/stellar.toml root@catcat.io:/var/www/html/stellar.toml
ssh root@catcat.io "nginx -t && nginx -s reload"

# scp -r ./stellarkit-federation/ root@catcat.io:~/stellarkit-federation/

# ssh root@catcat.io "mkdir test"
# scp ./test/federation.js root@catcat.io:~/test/federation.js
# scp ./test/Dockerfile root@catcat.io:~/test/Dockerfile