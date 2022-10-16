#!/bin/bash
source neardev/.env

TOKEN_ID="121627"

NEAR_ENV="$NEAR_ENV" near view $CONTRACT_NAME nft_token "{ \"token_id\": \"$TOKEN_ID\" }"
