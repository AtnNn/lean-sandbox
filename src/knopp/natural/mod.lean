import knopp.natural.lemmas

namespace knopp namespace natural

def mod : natural → natural → natural
| a b := if h : b < a then
have natural.sizeof (sub a b h) < natural.sizeof a :=
  lt_sizeof_of_lt (sub_lt_of_lt h),
mod (a.sub b) b else a

instance has_mod : has_mod natural := ⟨mod⟩

def mod_def {a b : natural} : a % b = if h : b < a then (sub a b) % b else a := mod.equations._eqn_1 a b

lemma mod_of_eq {a : natural} : a % a = a :=
begin
  rw mod_def,
  apply dif_neg,
  exact not_lt_of_eq
end

lemma mod_of_le {a b : natural} (h : a ≤ b) : a % b = a :=
begin
  cases h,
  { rw h, exact mod_of_eq },
  { rw mod_def,
    rw dif_neg,
    intro hh,
    exact not_lt_and_lt_symm ⟨h, hh⟩ }
end

lemma mod_step {a b : natural} (h : a > b) : a % b = (sub a b) % b :=
begin
  rw mod_def,
  rw dif_pos h
end

lemma one_mod {a : natural} : 1 % a = 1 :=
begin
  apply mod_of_le,
  exact one_le
end

lemma mod_le_right {a b : natural} : a % b ≤ b :=
begin
  induction a using knopp.natural.strong_induction with a ih,
  apply cases_le_or_gt a b; intro h,
  { rw mod_of_le; assumption },
  { rw mod_step,
    { apply ih, constructor, apply sub_add_eq },
    { assumption }}
end

lemma mod_le_left {n m : natural} : n % m ≤ n :=
begin
  suffices h : ∀ x, x ≤ n → (x % m) ≤ n,
  { apply h, exact or.inl rfl, },
  { intros x h,
    induction x using knopp.natural.strong_induction with x ih,
    rw mod_def, by_cases hh: m < x,
    { rw dif_pos, tactic.swap,
      { assumption, },
      { apply ih,
        { use m, rw sub_add_eq, },
        { cases h with y,
          { subst x, right, apply sub_lt_of_lt, },
          { cases h with y h, right, use m + y,
            rw ← add_assoc, rw sub_add_eq, assumption, }, }, }, },
    { rw dif_neg,
      { assumption, },
      { assumption, }, }, },
end

lemma mod_one {a : natural} : a % 1 = 1 :=
begin
  have h := @mod_le_right a 1,
  cases h,
  { assumption },
  { exfalso, exact not_lt_one h }
end

lemma le_of_mod_eq {a b : natural} (h : a % b = a) : a ≤ b :=
begin
  rw mod_def at h,
  split_ifs at h,
  
end

end natural end knopp
