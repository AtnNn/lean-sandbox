import number_theory.sum_four_squares

lemma t019 : ∀ n : ℕ, ∃ a b c d : ℕ, a^2 + b^2 + c^2 + d^2 = n
:= nat.sum_four_squares
