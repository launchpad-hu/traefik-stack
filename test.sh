set -eo pipefail
set -x
ssh dokku@dev apps:destroy --force traefik || true
ssh dokku@dev nginx:stop
ssh dokku@dev apps:create traefik
ssh dokku@dev proxy:set traefik null
ssh dokku@dev builder:set traefik selected null
ssh dokku@dev scheduler:set traefik selected swarm
git push dokku HEAD