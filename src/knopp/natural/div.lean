import knopp.natural.lemmas

namespace knopp namespace natural

def div.total : natural → natural → natural
| a b :=
if h : a > b then
have sub a b h < a := sub_lt_of_lt h,
div.total (sub a b h) b + 1 else 1

lemma div_wf {a b : natural} (h : b < a) : sub a b h < a := begin
  exact sub_lt_self
end

def div.impl : Π (a b : natural), (a ∣ b) → natural
| a b hd := if h : b < a then
have hh : _ := div_wf h,
div.impl (sub a b h) b (sub_dvd_of_dvd hd)  + 1 else 1

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
    replace h₃ :=  ge_of_not_lt h₃,
    sorry }
end

lemma div_mul {a b : natural} {h} : (div a b) * b = a :=
begin
  generalize hk : div a b h = k,
  revert a b,
  induction k with k ih,
  { intros, replace hk := eq_of_div_eq_one hk, subst a, exact one_mul },
  { intros, rw succ_mul, sorry }
end

end natural end knopp
