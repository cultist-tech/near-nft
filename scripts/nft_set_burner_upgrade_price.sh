#!/bin/bash
source neardev/.env

TOKEN_ID="10001"

NEAR_ENV="$NEAR_ENV" near call $CONTRACT_NAME nft_set_burner_upgrade_price --accountId $CONTRACT_NAME "{ \"rarity\": 1, \"burning_rarity_sum\": 2, \"types\": { \"sub_type\": \"MagDodge\", \"collection\": \"Fantasy\", \"type\": \"Class\" } }"
