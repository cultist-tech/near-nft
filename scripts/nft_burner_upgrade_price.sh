#!/bin/bash
source neardev/.env

TOKEN_ID="10001"

NEAR_ENV="$NEAR_ENV" near view $CONTRACT_NAME nft_burner_upgrade_price "{ \"token_id\": \"$TOKEN_ID\" }"
