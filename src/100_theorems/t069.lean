import algebra.euclidean_domain

-- Greatest Common Divisor Algorithm

universe u

open euclidean_domain

#check dvd_gcd

theorem t069 {α : Type u} [euclidean_domain α] [decidable_eq α] (a b : α) :
∃ c, c ∣ a ∧ c ∣ b ∧ (∀ x : α, x ∣ a → x ∣ b → x ∣ c)
:= begin
  use gcd a b,
  rw ← and_assoc,
  split,
  { exact gcd_dvd a b },
  { intro, exact dvd_gcd }
end
