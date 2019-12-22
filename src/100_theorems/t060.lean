import algebra.euclidean_domain

-- Bezout’s Theorem

universe u

open euclidean_domain

theorem t060 {α : Type u} [euclidean_domain α] [decidable_eq α]
: Π (a b : α), (gcd a b : α) = a * gcd_a a b + b * gcd_b a b
:= gcd_eq_gcd_ab
