variables {n : ℕ}

@[simp]
lemma nat_lt_zero : ¬ n < 0 :=
by {intro h, cases h}
