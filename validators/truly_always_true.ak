// use aiken/crypto.{VerificationKeyHash}
// use cardano/assets.{PolicyId}
// use cardano/transaction.{OutputReference, Transaction}

validator truly_always_true {
  else(_) {
    True
  }
}
