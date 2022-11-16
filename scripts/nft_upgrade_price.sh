#!/bin/bash
source neardev/.env

TOKEN_ID="8051"

NEAR_ENV="$NEAR_ENV" near view $CONTRACT_NAME nft_upgrade_price "{ \"token_id\": \"$TOKEN_ID\" }"
