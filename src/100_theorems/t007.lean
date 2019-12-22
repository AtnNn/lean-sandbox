import data.zmod.quadratic_reciprocity

open zmodp

theorem t007 {p q : ℕ} : Π (hp : nat.prime p) (hq : nat.prime q), p % 2 = 1 → q % 2 = 1 → p ≠ q
→ legendre_sym p q hq * legendre_sym q p hp = (-1) ^ ((p / 2) * (q / 2))
:= quadratic_reciprocity
