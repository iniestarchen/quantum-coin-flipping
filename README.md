# Quantum Coin Flipping Protocol

> **Category**: cryptography &nbsp;|&nbsp; **Difficulty**: intermediate &nbsp;|&nbsp; **Qubits**: 2 &nbsp;|&nbsp; **Gates**: 5 &nbsp;|&nbsp; **Depth**: 4

Quantum coin flipping uses entanglement to achieve a fair coin flip between two mutually distrustful parties. Unlike classical coin flipping, neither party can bias the outcome without being detected. A Bell pair is shared; each party applies a random local operation, then both measure. The XOR of their results is the coin. Full security requires a more complex protocol; this circuit demonstrates the core idea.

## Expected Output

50% each: c[0]=c[1]=0 or c[0]=c[1]=1 (fair coin; XOR=0 always for Bell state)

## Circuit

The OpenQASM 2.0 circuit is in [`circuit.qasm`](./circuit.qasm).

```
OPENQASM 2.0;
include "qelib1.inc";
// Quantum coin flipping: Alice (q[0]) and Bob (q[1]) share a Bell pair
qreg q[2];
creg c[2];
// Prepare Bell pair |Phi+>
h q[0];
cx q[0],q[1];
// Alice randomly applies Z (or not) — here she applies Z as her "choice"
z q[0];
// Both measure in Z basis
measure q[0] -> c[0];
measure q[1] -> c[1];
```

## Tags

`coin-flipping` `cryptography` `fairness` `entanglement`

## References

- [Mochon, C. (2007). Quantum Weak Coin Flipping with Arbitrarily Small Bias. arXiv:0711.4114](https://arxiv.org/abs/0711.4114)

## License

MIT — part of the [OpenQC Algorithm Catalog](https://github.com/openqc-algorithms).
