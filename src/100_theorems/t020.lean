import number_theory.sum_two_squares

-- All Primes (1 mod 4) Equal the Sum of Two Squares

lemma t020 {p : ℕ} : p.prime → p % 4 = 1
→ ∃ a b : ℕ, a ^ 2 + b ^ 2 = p
:= nat.prime.sum_two_squares

#print t020
