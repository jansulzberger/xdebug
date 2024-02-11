# XDebug und Prometheus
## SSL Zertifikate
Für die Entwicklung im localhost
```bash
openssl req -x509 -out nginx/ssl/localhost.crt -keyout nginx/ssl/localhost.key \
  -newkey rsa:2048 -nodes -sha256 \
  -subj '/CN=localhost' -extensions EXT -config <( \
   printf "[dn]\nCN=localhost\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:localhost\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")
```
## Running
```bash
./run.sh
```

## Symfony
Neues Projekt erstellen
```bash
docker compose run --rm composer create-project symfony/skeleton:"6.3.*" .
```
