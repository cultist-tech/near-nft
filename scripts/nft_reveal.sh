#!/bin/bash
source neardev/.env

ACCOUNT_ID="muzikant.testnet"
TOKEN_ID="_r_8"

NEAR_ENV="$NEAR_ENV" near call $CONTRACT_NAME nft_reveal --accountId $ACCOUNT_ID "{ \"token_id\": \"$TOKEN_ID\" }" --gas 40000000000000
