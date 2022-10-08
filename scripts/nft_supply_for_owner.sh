#!/bin/bash
source neardev/.env

ACCOUNT_ID="meashli.testnet"

NEAR_ENV="$NEAR_ENV" near view $CONTRACT_NAME nft_supply_for_owner "{ \"account_id\": \"$ACCOUNT_ID\" }"
