import lib.sets

def split_and (

class has_upper_bound {α} [has_le α] (s : set α) :=
(ub : α) (h : ∀ x : α, s x → x ≤ ub)

def tmp : has_upper_bound (λ x, x = 1) := ⟨1, by simp⟩

meta def find_nat_ub_tac : tactic unit :=
  `[exact tmp]

instance find_nat_ub {s : set ℕ} (hub : has_upper_bound s . find_nat_ub_tac) : has_upper_bound s := hub

def tmp2 : has_upper_bound (λ x, x = 1) := find_nat_ub

#reduce tmp2.ub

def foo [hub : has_upper_bound (λ x, x = 1)] : ℕ := hub.ub

#eval foo

instance fintype_bounded_nat {p : set ℕ} [has_upper_bound p] : fintype p := sorry

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
