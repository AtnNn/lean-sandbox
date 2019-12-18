import data.real.basic
import lib.attempt

theorem challenge3 :
(2 : ℝ) + 2 ≠ 5 :=
attempt begin
  have h : (2 : ℝ) + 2 = 4 := rfl,
  rw h,
  unfold has_one.one,
  sorry
end $
attempt begin
  apply (λ x, x),
  norm_num,
end $
attempt begin
  linarith
end $
attempt begin
  -- library_search,
  sorry
end $
attempt begin
  have h: (2 + 2 : ℕ) ≠ (5 : ℕ),
  -- library_search,
  exact nat.bit0_ne_bit1 2 2,
  sorry
end $
attempt begin
  exact λ h, zero_ne_one $
    eq.trans (eq.symm
        (sub_eq_zero_of_eq h.symm))
      (add_sub_cancel' _ _),
end $
attempt begin
  intro h,
  apply zero_ne_one _,
  { exact ℝ }, { apply_instance },
  apply eq.trans,
  apply eq.symm,
  apply sub_eq_zero_of_eq,
  apply h.symm,
  apply add_sub_cancel' (4 : ℝ) (1 : ℝ),
end $
begin
  exact bit0_ne_bit1, 
end

#print challenge3

example : Π x : ℕ, 4 ≠ (5 : ℝ) + ↑x :=
begin
  linarith, l
end

