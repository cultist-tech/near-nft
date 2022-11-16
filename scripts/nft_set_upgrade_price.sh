#!/bin/bash
source neardev/.env

TOKEN_ID="8051"

NEAR_ENV="$NEAR_ENV" near call $CONTRACT_NAME nft_set_upgrade_price --accountId $CONTRACT_NAME "{ \"rarity\": 1, \"types\": {\"type\": \"Access\", \"sub_type\": \"Tester\"}, \"ft_token_id\": \"mfight-ft.testnet\", \"price\": \"1\" }"
