use aiken/collection/dict.{Dict}
use aiken/crypto.{ScriptHash, VerificationKeyHash}

// Type of the unApxn datum
pub type State {
  count: Int,
  minting_addr: ScriptHash,
  results_addr: VerificationKeyHash,
  multi: Dict<ByteArray, Int>,
}

// Type of the scripts redeemer
pub type Action {
  Mintin
  Update
  Withdraw
}

// Type of the proposal-x datum
pub type Metadata {
  proposal: ByteArray,
  state: ByteArray,
  amount: Int,
}
