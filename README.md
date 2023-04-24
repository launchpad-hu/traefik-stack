# traefik-stack

A stack to be deployed to Dokku with dokku-swarm.

```
git remote add dokku dokku@<host>:traefik
ssh dokku@<host> nginx:stop
ssh dokku@<host> apps:create traefik
ssh dokku@<host> plugin:install https://github.com/launchpad-hu/dokku-swarm.git
ssh dokku@<host> builder:set traefik selected null
ssh dokku@<host> scheduler:set traefik selected swarm
git push dokku HEAD
```
