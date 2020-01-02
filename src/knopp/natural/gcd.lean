import knopp.natural.mod

namespace knopp namespace natural

lemma gcd_wf (n m : natural) (hx : m % n ≠ n) : sizeof (m % n) < sizeof n :=
begin
  apply lt_sizeof_of_lt,
  cases @mod_le_right m n,
  { constructor,
    exfalso,
    exact hx h,
    exact 1 },
  { assumption }
end

def gcd : natural → natural → natural
| n m := let x := m % n in if h: x = n then x else
have hh : _ := gcd_wf n m h,
gcd x n

lemma gcd_def' {a b : natural} : gcd a b = if b % a = a then b % a else gcd (b % a) a :=
begin
  conv { to_lhs, rw gcd.equations._eqn_1 }
end

lemma gcd_same {a : natural} : gcd a a = a :=
begin
  rw gcd_def',
  rw if_pos mod_of_eq,
  exact mod_of_eq
end

lemma  gcd_def {a b : natural} : gcd a b = if a = b then a else gcd (b % a) a :=
begin
  by_cases a = b,
  { rw if_pos h, rw h, exact gcd_same },
  { rw if_neg h,
    conv in (gcd a b) { rw gcd_def' },
    by_cases hh : b % a = a,
    { rw if_pos hh, rw hh, rw gcd_same },
    { rw if_neg hh } }
end

lemma gcd_step {a b : natural} : gcd a b = gcd (b % a) a :=
begin
  conv in (gcd a b) { rw gcd_def },
  by_cases h: a = b,
  { rw if_pos h, rw h, rw mod_of_eq, rw gcd_same },
  { rw if_neg h }
end

lemma gcd_symm {x y : natural} : gcd x y = gcd y x :=
begin
  wlog h : y ≤ x, { exact le_or_le_symm },
  rw gcd_def,
  cases h,
  { rw if_pos h.symm, subst y, rw gcd_same },
  { rw if_neg,
    rw mod_of_le,
    exact or.inr h,
    intro hh,
    cases h with x h,
    subst y,
    exact add_ne_self h }
end

@[simp]
lemma gcd_one {a : natural} : gcd a 1 = 1 :=
begin
  rw [gcd_symm, gcd_step, mod_one, gcd_same]
end

@[simp]
lemma gcd_dvd_left {a b : natural} : a ∣ gcd a b :=
begin
  suffices ∀ k, (∀ x y, x < k → y < k → x ∣ gcd x y) → 
end

end natural end knopp
