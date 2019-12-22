import data.zmod.quadratic_reciprocity

-- Wilson’s Theorem

open nat

theorem t051 {p : ℕ} : Π (hp : nat.prime p), (fact (p - 1) : zmodp p hp) = -1
:= zmodp.wilsons_lemma
