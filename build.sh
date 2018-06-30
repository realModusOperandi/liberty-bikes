#!/bin/bash

echo "export const environment = {\
  production: true,\
  API_URL_AUTH: 'http://vega.local/bikes-auth',\
  API_URL_PARTY: 'http://vega.local/bikes-game/party',\
  API_URL_GAME_ROUND: 'http://vega.local/bikes-game/round',\
  API_URL_GAME_WS: 'ws://vega.local/bikes-game/round/ws',\
  API_URL_PLAYERS: 'http://vega.local/bikes-player/player',\
  API_URL_RANKS: 'http://vega.local/bikes-player/rank'\
};" > ./frontend/prebuild/src/environments/environment.prod.ts
./gradlew clean build libertyStart -Denv_mode=prod
