import knopp.natural.lemmas

namespace knopp namespace natural

def div.total : natural → natural → natural
| a b :=
if h : a > b then
have sub a b h < a := sub_lt_of_lt h,
div.total (sub a b h) b + 1 else 1
using_well_founded lib.wf_tacs

lemma div_wf {a b : natural} (h : b < a) : sub a b h < a := begin
  exact sub_lt_self
end

def div.impl : Π (a b : natural), (a ∣ b) → natural
| a b hd := if h : b < a then
have hh : _ := div_wf h,
div.impl (sub a b h) b (sub_dvd_of_dvd hd)  + 1 else 1
using_well_founded lib.wf_tacs

def div (a b : natural) (h : a ∣ b . autoparam) := div.impl a b h

def div_def {a b : natural} {h} : div a b h = if hh : b < a then div (sub a b hh) b (sub_dvd_of_dvd h) + 1 else 1 :=
begin
  conv in (div a b h) { rw div, rw div.impl.equations._eqn_1 },
  split_ifs,
  { rw div },
  { refl }
end

lemma div_eq_div_total {a b : natural} {h} : div a b = div.total a b :=
begin
  induction a using knopp.natural.strong_induction with a ih,
  delta div, rw div.impl.equations._eqn_1,
  rw div.total.equations._eqn_1,
  split_ifs with hh,
  { congr, apply ih, apply sub_lt_self },
  { refl }
end

lemma eq_of_div_eq_one {a b : natural} {h₁} (h₂ : div a b h₁ = 1) : a = b :=
begin
  rw div_def at h₂,
  split_ifs at h₂ with h₃,
  { exfalso, exact succ_ne_one h₂ },
  { cases h₁ with x h₁,
    subst a,
    cases ge_of_not_lt h₃,
    { assumption },
    { exfalso, exact not_mul_lt h } }
end

@[simp]
lemma div_self {a : natural} (h : a ∣ a): div a a h = 1 := begin
  rw div_def,
  split_ifs with h₂,
  { exfalso, exact not_lt_of_eq h₂ },
  { refl }
end

def div_step {a b} {h₁ h₂} : div (a + b) b h₁ = div a b h₂ + 1 :=
begin
  conv { to_lhs, rw div_def },
  split_ifs,
  { conv in (sub _ _ _) { rw sub_step } },
  { exfalso,
    apply h,
    use a,
    ac_refl }
end

lemma div_one {a : natural} {h} : div a 1 = a :=
begin
  induction a with a ih,
  { refl },
  { rw div_step, rw ih }
end

lemma sub_div {a b : natural} {h₁ h₂ h₃ h₄} : div (sub a b h₁) b h₂ = sub (div a b h₃) 1 h₄ :=
begin
  by_cases h: a > b,
  { cases h with y h,
    rw add_comm at h,
    subst a,
    conv in (sub _ b _) { rw sub_step },
    conv in (div _ b _) { rw div_step },
    conv in (sub _ _ _) { rw sub_step } },
  { exfalso, exact h h₁ }
end

@[simp]
lemma div_mul {a b : natural} {h} : (div a b h) * b = a :=
begin
  cases h with k h,
  revert a b,
  induction k with k ih,
  { intros, subst a,
    repeat { conv in (b * 1) { rw mul_one } },
    rw div_self,
    rw one_mul },
  { intros,
    specialize @ih (sub a b) b,
    have h₂ := h,
    rw [mul_succ, add_comm] at h₂,
    specialize ih (eq_sub_of_add_eq h₂.symm).symm,
    replace ih := congr_arg (+ b) ih,
    simp at ih,
    conv { to_rhs, rw [← ih, add_comm, ← succ_mul] },
    congr,
    conv { to_rhs, rw ← div_step },
    congr,
    simp }
end

end natural end knopp
