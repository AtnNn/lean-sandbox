import algebra.big_operators
import analysis.specific_limits

-- Sum of a Geometric Series

open finset

theorem t066_finite {α} [division_ring α] {x : α} : Π (h : x ≠ 1) (n : ℕ),
  (range n).sum (λ i, x^i) = (x^n-1)/(x-1)
:= geom_sum

lemma t066_infinite {r : ℝ} : Π (h₁ : 0 ≤ r) (h₂ : r < 1),
  has_sum (λn:ℕ, r ^ n) (1 - r)⁻¹
:= has_sum_geometric
