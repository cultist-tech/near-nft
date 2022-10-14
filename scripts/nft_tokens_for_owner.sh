#!/bin/bash
source neardev/.env

NEAR_ENV="$NEAR_ENV" near view $CONTRACT_NAME nft_tokens_for_owner "{ \"account_id\": \"$CONTRACT_NAME\", \"limit\": 5, \"from_index\": \"1000\" }"
