use near_sdk::{ AccountId, PromiseOrValue, require, near_bindgen, env };
use near_sdk::json_types::U128;
use crate::*;
use near_sdk::serde::{ Deserialize, Serialize };
use mfight_sdk::mt::MultiFungibleTokenReceiver;
use mfight_sdk::nft::UpdateOnFtTransferArgs;

#[derive(Serialize, Deserialize)]
#[serde(crate = "near_sdk::serde")]
pub struct MtTransferArgs {
    pub token_id: TokenId,
}

#[near_bindgen]
impl MultiFungibleTokenReceiver for Contract {
    fn mt_on_transfer(
        &mut self,
        sender_id: AccountId,
        token_ids: Vec<AccountId>,
        amounts: Vec<U128>,
        msg: String
    ) -> PromiseOrValue<Vec<U128>> {
        let args: MtTransferArgs = near_sdk::serde_json
            ::from_str(&msg)
            .expect("Invalid MtTransferArgs");
        let mt_token_id = env::predecessor_account_id();

        let mt_account = AccountId::new_unchecked("mfight-mt.testnet".to_string());

        assert_eq!(mt_account, mt_token_id, "Access Denied");

        let account1 = AccountId::new_unchecked("mfight-ft.testnet".to_string());
        let account2 = AccountId::new_unchecked("mfight-xp.testnet".to_string());

        assert_eq!(amounts.len(), 2, "Invalid amounts len");

        assert_eq!(&account1, token_ids.get(0).expect("Invalid amounts len"), "Invalid params");
        assert_eq!(&account2, token_ids.get(1).expect("Invalid amounts len"), "Invalid params");

        let amount1 = amounts[0];
        let amount2 = amounts[1];

        assert!(amount1.0 > 0, "Amount must be greater than 0");
        assert!(amount2.0 > 0, "Amount must be greater than 0");

        assert_eq!(U128::from(amount2.0 * 10), amount1, "Invalid attached amount of tokens");

        self.tokens.internal_on_ft_transfer(&UpdateOnFtTransferArgs {
            token_id: args.token_id,
        }, &account1, &amount1.into(), &sender_id);

        return PromiseOrValue::Value(vec![U128::from(0), U128::from(0)]);
    }
}
