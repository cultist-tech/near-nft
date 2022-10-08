#!/bin/bash
source neardev/.env
ACCOUNT_ID="muzikant.testnet"
TOKEN_ID="7134"

NEAR_ENV="$NEAR_ENV" near call $CONTRACT_NAME nft_burn --accountId $CONTRACT_NAME "{ \"token_id\": \"$TOKEN_ID\" }" --gas 40000000000000
