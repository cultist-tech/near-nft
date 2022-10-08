#!/bin/bash
source neardev/.env

NEAR_ENV="$NEAR_ENV" near view $CONTRACT_NAME nft_royalty_value "{ }"
