import lib.tactics
import lib.sets
import lib.nat
import lib.lists

namespace problem1

def problem : ℕ :=
  set_sum { n | (3 ∣ n ∨ 5 ∣ n) ∧ n < 1000 }

def sum_to (n : ℕ) := n * (n + 1) / 2

def sum_mult_below (n : ℕ) (m : ℕ) := sum_to ((m - 1) / n) * n

def sum_mult35_below (m : ℕ) :=
  sum_mult_below 3 m
    + sum_mult_below 5 m
    - sum_mult_below 15 m

example : sum_mult35_below 10 = 23 := rfl

def solution := sum_mult35_below 1000

lemma sum_to_suc {n} : sum_to (n + 1) = n + 1 + sum_to n := begin
  delta sum_to,
  have h₁ := by calc
     (n + 1) * (n + 1 + 1) / 2 = (n + 1) * (n + 2) / 2 : by simp
     ... = (n * n + n * 3 + 2) / 2 : by { simp, ring },
  have h₂ := by calc
    n + 1 + n * (n + 1) / 2 = (n + 1) + n * (n + 1) / 2 : by simp
    ... = (n + 1) * (1 + 1) / (1 + 1) + n * (n + 1) / 2 : by rw [←nat_mul_div_eq 1 (n + 1)]
    ... = ((n + 1) * 2 + n * (n + 1)) / 2 : by simp [mul_distrib_of_dvd, dvd_mul, mul_suc_even]
    ... = (n * 2 + 1 * 2 + n * n + n * 1) / 2 : by simp [nat.left_distrib, nat.right_distrib]
    ... = (n * n + n * 3 + 2) / 2 : by { simp, ring },
  rw [h₁, h₂]
end

lemma sum_to_eq_sum_iota {n} : sum_to n = list.sum (list.iota n) := begin
  induction n with n ih,
  { refl },
  { rw [sum_to_suc, ih, iota_succ, sum_cons] }
end

lemma filter_and {T} {p q : T → Prop} [decidable_pred p] [decidable_pred q] {xs : list T} : list.filter (λ x, (p x ∧ q x)) xs = list.filter p (list.filter q xs) := begin
  sorry
end

lemma set_sum_of_sum_mult_below {d k : ℕ} : sum_mult_below d k = set_sum {n | d ∣ n ∧ n < k} := begin
  delta set_sum,
  delta sum_mult_below,
  unfold has_upper_bound.ub,
  rw [sum_to_eq_sum_iota],
  rw [sum_map_of_sum_mul],
  refine congr rfl _,
  generalize h : (k - 1) / d = m,
  induction m,
  { simp, sorry },
  { sorry }
end

theorem proof : problem = solution := begin
  delta problem solution,
  delta sum_mult35_below,
  sorry
end

end problem1
