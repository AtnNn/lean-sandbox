import algebra.big_operators

-- Sum of an arithmetic series

open finset

theorem t068 : ∀ (n : ℕ), (finset.range n).sum (λi, i) = (n * (n - 1)) / 2
:= sum_range_id
