use aiken/collection/dict
use aiken/collection/list
use aiken/crypto.{VerificationKeyHash}
use cardano/assets.{PolicyId}
use cardano/transaction.{InlineDatum, OutputReference, Transaction}
use types.{State}

validator mint_token {
  mint(redeemer: State, policy_id: PolicyId, tx: Transaction) {
    let Transaction { mint, inputs, outputs, .. } = tx
    expect [Pair(token_name, qty)] =
      mint |> assets.tokens(policy_id) |> dict.to_pairs
    trace @"........................."
    expect Some(input) = list.head(inputs)
    expect InlineDatum(datum_data) = input.output.datum
    let datum_data: Data = redeemer
    and {
      qty == 1,
      datum_data == datum_data,
    }
  }

  else(_) {
    fail
  }
}
