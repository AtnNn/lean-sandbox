import data.nat.choose

-- The Binomial Theorem

open finset
open nat

theorem t044 {α : Type*} [comm_semiring α] :
∀ (x y : α) (n : ℕ), (x + y) ^ n = (range (succ n)).sum (λ m, x ^ m * y ^ (n - m) * choose n m)
:= add_pow
