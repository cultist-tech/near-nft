#!/bin/bash
source neardev/.env

ACCOUNT_ID="$CONTRACT_NAME"
RECEIVER_ID="muzikant.testnet"
TOKEN_ID="8173"

#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"$TOKEN_ID\", \"receiver_id\":\"$RECEIVER_ID\" }"

# tester
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8149\", \"receiver_id\":\"zuka.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8150\", \"receiver_id\":\"amardar.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8151\", \"receiver_id\":\"andresantos1.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8152\", \"receiver_id\":\"angvur.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8153\", \"receiver_id\":\"fkusnyahinrmk.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8154\", \"receiver_id\":\"gena.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8155\", \"receiver_id\":\"goldkreateav.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8156\", \"receiver_id\":\"kate_ovi.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8157\", \"receiver_id\":\"kenny2319.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8158\", \"receiver_id\":\"limeflash2.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8159\", \"receiver_id\":\"muzikant.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8160\", \"receiver_id\":\"nalogovik.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8161\", \"receiver_id\":\"ninja_fighter.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8162\", \"receiver_id\":\"pitfit.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8163\", \"receiver_id\":\"trepr.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8164\", \"receiver_id\":\"uraniumus.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8165\", \"receiver_id\":\"valentina2.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8166\", \"receiver_id\":\"whendacha.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8167\", \"receiver_id\":\"yebiwe.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8168\", \"receiver_id\":\"zabaykalezz.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8169\", \"receiver_id\":\"sonik.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8170\", \"receiver_id\":\"amardar.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8171\", \"receiver_id\":\"ilyasanctor.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8172\", \"receiver_id\":\"vv0lfman.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8173\", \"receiver_id\":\"edmccaff.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8175\", \"receiver_id\":\"kirill3110.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8176\", \"receiver_id\":\"ofelok.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $ACCOUNT_ID "{ \"token_id\": \"8177\", \"receiver_id\":\"ka3ak.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $CONTRACT_NAME "{ \"token_id\": \"8173\", \"receiver_id\":\"testninja.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $CONTRACT_NAME "{ \"token_id\": \"8174\", \"receiver_id\":\"sergeysova.testnet\" }"
#near call $CONTRACT_NAME nft_transfer --accountId $CONTRACT_NAME "{ \"token_id\": \"8055\", \"receiver_id\":\"vinechka.testnet\" }" --depositYocto 1
#near call $CONTRACT_NAME nft_transfer --accountId $CONTRACT_NAME "{ \"token_id\": \"8054\", \"receiver_id\":\"dtdesigner.testnet\" }" --depositYocto 1
#near call $CONTRACT_NAME nft_transfer --accountId $CONTRACT_NAME "{ \"token_id\": \"8052\", \"receiver_id\":\"andyjr.testnet\" }" --depositYocto 1
near call $CONTRACT_NAME nft_transfer --accountId $CONTRACT_NAME "{ \"token_id\": \"8051\", \"receiver_id\":\"elystrand.testnet\" }" --depositYocto 1

