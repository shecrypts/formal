# Crypto Foundations

This folder  contains machine-checked proofs for basic cryptographic operations in Isabelle/HOL.

## Verified Theorems
1. `Xor_Basics.xor_cancel`: Proves double XOR with the same key returns original message.
2. `Xor_Basics.xor_comm`: Proves XOR commutativity.
3. `Modular_Shifts.shift_compose`: Proves composition law for shift ciphers.

## Build Instructions
Run `isabelle build -D .` from this directory.