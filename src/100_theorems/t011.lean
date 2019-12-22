import data.nat.prime

open nat

theorem t011 : Π (n : ℕ), ∃ p, p ≥ n ∧ prime p
:= exists_infinite_primes
