#!/bin/bash
source neardev/.env

NEAR_ENV="$NEAR_ENV" near view $CONTRACT_NAME nft_tokens "{ \"limit\": 10, \"from_index\": \"10\" }"
