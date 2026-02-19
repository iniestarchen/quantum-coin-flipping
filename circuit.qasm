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
