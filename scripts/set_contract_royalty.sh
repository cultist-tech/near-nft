#!/bin/bash
source neardev/.env

ACCOUNT_ID="$CONTRACT_NAME"
ROYALTY=1000

near call $CONTRACT_NAME set_royalty_amount --accountId $ACCOUNT_ID "{ \"contract_royalty\": $ROYALTY }"
