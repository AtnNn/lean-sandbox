import number_theory.pell

-- Solutions to Pell’s Equation

open pell

theorem t039 {a x y : ℕ} : Π (a1 : a > 1), (x*x - (a * a - 1) * y * y = 1) → ∃n, x = xn a1 n ∧ y = yn a1 n
:= begin
  intros,
  refine eq_pell _ _,
  rw ← a_1,
  ring,
end
