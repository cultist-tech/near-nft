#!/bin/bash
source neardev/.env

ACCOUNT_ID="$CONTRACT_NAME"

near call $CONTRACT_NAME set_royalty_value --accountId $ACCOUNT_ID "{ \"contract_royalty\": 1000 }"
