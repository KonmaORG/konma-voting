// use aiken/crypto.{VerificationKeyHash}
// use cardano/assets.{PolicyId}
// use cardano/transaction.{OutputReference, Transaction}

validator voting {
  mint(_r, _p, _tx) {
    todo
  }

  spend(_d, _r, _oref, _tx) {
    todo
  }

  else(_) {
    fail
  }
}
