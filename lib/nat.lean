variables {n : ℕ}

@[simp]
lemma nat_lt_zero : ¬ n < 0 :=
by {intro h, cases h}

@[simp]
lemma succ_lt_succ {a b : ℕ}
: (nat.succ a ≤ nat.succ b) = (a ≤ b)
:= begin
  have h : ∃ n, n = b - a := ⟨b - a, rfl⟩,
  destruct h, clear h, intros n h,

end
