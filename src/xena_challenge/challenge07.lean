import data.rat.basic tactic

-- prove one and delete the other

theorem some_reciprocal_is_zero : ∃ x : ℚ, 1 / x = 0 :=
begin
  use 0,
  refl -- cf. nat.inv
end

-- theorem no_reciprocal_is_zero : ¬ (∃ x : ℚ, 1 / x = 0) :=
-- begin
--   sorry
-- end
