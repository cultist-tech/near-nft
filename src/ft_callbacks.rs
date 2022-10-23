use crate::*;
use near_sdk::serde::{ Deserialize, Serialize };
use schemars::JsonSchema;
use mfight_sdk::nft::UpdateOnFtTransferArgs;
use mfight_sdk::ft::FungibleTokenReceiver;

#[derive(Serialize, Deserialize, JsonSchema)]
#[serde(crate = "near_sdk::serde")]
enum Args {
    Update(UpdateOnFtTransferArgs),
}

#[near_bindgen]
impl FungibleTokenReceiver for Contract {
    fn ft_on_transfer(
        &mut self,
        sender_id: AccountId,
        amount: U128,
        msg: String
    ) -> PromiseOrValue<U128> {
        let ft_token_id = env::predecessor_account_id();
        let signer_id = env::signer_account_id();

        assert_ne!(
            ft_token_id,
            signer_id,
            "ft_on_transfer should only be called via cross-contract call"
        );
        assert_eq!(&sender_id, &signer_id, "owner_id should be signer_id");

        match near_sdk::serde_json::from_str(&msg).expect("Invalid Args") {
            Args::Update(updateArgs) => {
                self.tokens.internal_on_ft_transfer(&updateArgs, &ft_token_id, &amount.into(), &sender_id)
            }
        }
    }
}
