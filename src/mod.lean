import data.nat.basic

universe u

namespace sandbox

open nat

def mod : nat → nat → nat
| _ 0 := 0
| a (succ b) := if h : a ≥ succ b then
have a - succ b < a := sub_lt_of_pos_le _ _ succ_pos' h,
mod (a - succ b) (succ b)
else a

local infix % := mod

lemma mod_zero {a} : mod a 0 = 0 :=
begin
  unfold mod
end

lemma mod_step {a b} (h : a ≥ b) : mod a b = mod (a - b) b :=
begin
  cases b,
  { refl },
  { rw mod.equations._eqn_2,
    rwa if_pos }
end

lemma mod_eq_of_lt {a b : nat} (h : a < b) : a % b = a :=
begin
  cases b,
  { exfalso, exact not_succ_le_zero a h },
  { rw mod.equations._eqn_2,
    rw if_neg,
    exact not_le.mpr h }
end

lemma zero_mod {b} : 0 % b = 0 :=
begin
  cases b,
  { exact mod_zero },
  { apply mod_eq_of_lt,
    apply nat.zero_lt_succ }
end

lemma mod_lt {a b} (h : b ≠ 0) : mod a b < b :=
begin
  cases b,
  { exfalso, exact h rfl },
  { induction a using nat.case_strong_induction_on with x ih,
    { rw zero_mod,
      apply nat.zero_lt_succ },
    { apply nat.lt_ge_by_cases,
      { intro h, rw mod_eq_of_lt h, exact h },
      { intro h,
        rw mod_step h,
        apply ih,
        replace h := le_of_succ_le_succ h,
        rw nat.succ_sub_succ,
        exact sub_le _ _ } } }
end

lemma mod_prop {a b} : ∃ k, mod a b * k = a :=
begin
  sorry
end

end sandbox

