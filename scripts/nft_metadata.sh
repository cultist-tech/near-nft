#!/bin/bash
source neardev/.env

near view $CONTRACT_NAME nft_metadata "{ }"
