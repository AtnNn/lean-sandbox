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

lemma mod_lt {a b} : mod a b < b :=
begin
  sorry
end

lemma mod_prop {a b} : ∃ k, mod a b * k = a :=
begin
  sorry
end

def mod.induction {P : nat → nat → Sort u}
: (∀ a b, a < b → P a b)
→ (∀ a b, a ≥ b → P (a - b) b → P a b)
→ ∀ a b, P a b
:= begin
  
end

#check well_founded.induction

end sandbox

