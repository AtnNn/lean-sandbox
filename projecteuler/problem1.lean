import lib.finite
import lib.sets
import lib.lists

def problem : ℕ :=
  set_sum { n | (3 ∣ n ∨ 5 ∣ n) ∧ n < 1000 }

def sum_to (n : ℕ) := n * (n + 1) / 2

def sum_mult_below (n : ℕ) (m : ℕ) := sum_to ((m - 1) / n) * n

def sum_mult35_below (m : ℕ) :=
  sum_mult_below 3 m
    + sum_mult_below 5 m
    - sum_mult_below 15 m

example : sum_mult35_below 10 = 23 := by refl

def solution := sum_mult35_below 1000

-- example : solution = 4613732 := by refl

example : problem = solution := _
