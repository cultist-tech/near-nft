#!/bin/bash
source neardev/.env

SALE_ID="badges"

near call $CONTRACT_NAME nft_mint --accountId $CONTRACT_NAME "{
  \"token_id\": \"8300\",
  \"token_metadata\": {
    \"title\": \"Eternal #8300\",
    \"media\": \"8000.png\"
  },
  \"receiver_id\": \"muzikant.testnet\",
  \"rarity\": 0,
  \"collection\": \"Unknown\",
  \"bind_to_owner\": false,
  \"token_type\": \"Armor\",
  \"reveal_at\": 1664128614368000000,
  \"royalty\": {}
}"
