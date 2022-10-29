#!/bin/bash
source neardev/.env

near view $CONTRACT_NAME nft_tokens "{ \"limit\": 5, \"from_index\": \"0\" }"
