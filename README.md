## Test
#### With `curl`
```shell
curl --head https://catcat.io/.well-known/stellar.toml
```

### To get certbot
```shell
git clone https://github.com/certbot/certbot
cd certbot
git checkout v0.22.0
sudo ./certbot-auto --os-packages-only
./tools/venv.sh
source venv/bin/activate
sudo ./certbot -d catcat.io -d *.catcat.io --manual --preferred-challenges dns-01 --server https://acme-v02.api.letsencrypt.org/directory certonly
```

### To test federation api
#### With `curl`
```shell
curl "https://api.catcat.io/federation?q=katopz*catcat.io&type=name"
```
#### With `NodeJS`
```js
var request = require('request');

request.get({
  url: 'https://api.catcat.io/federation',
  qs: {
    q: 'katopz*catcat.io',
    type: 'name'
  }
}, function(error, response, body) {
  console.log(body);
});
```