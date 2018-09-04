import lib.tactics
import data.nat.basic
import algebra.field
import algebra.group

open nat

@[simp]
lemma zero_lt_succ {n : ℕ} : 0 < n + 1 := by {
  induction n with n ih,
  { exact less_than_or_equal.refl _ },
  { exact less_than_or_equal.step ih } }

@[simp]
lemma nat_div_self {n : ℕ} : (n + 1) / (n + 1) = 1 := begin
  rw [div_def],
  have h : 0 < n + 1 ∧ n + 1 ≤ n + 1 := by simp,
  rw [if_pos h],
  calc
  (n + 1 - (n + 1)) / (n + 1) + 1 = ((n + 1) - (n + 1)) / (n + 1) + 1 : by simp
  ... = 0 / (n + 1) + 1 : by rw [nat.sub_self]
  ... = 1 : by simp
end

lemma self_le_mul {a b : ℕ} : a ≤ (b + 1) * a := begin
  induction b with b ih,
  { simp },
  { have h := by { calc
    (b + 1) * a ≤ (b + 1) * a + a : by exact nat.le_add_right ((b + 1) * a) a
    ... ≤ (b + 1) * a + 1 * a : by simp
    ... ≤ ((b + 1) + 1) * a : by rw [←(nat.right_distrib)]
    ... ≤ (succ b + 1) * a : by simp },
    exact nat.le_trans ih h
  }
end

lemma nat_mul_div_eq (k n : ℕ) : n = n * (k + 1) / (k + 1) := begin
   induction n with n ih,
  { simp },
  { rw [nat.div_def],
     have h₁ : 0 < k + 1 ∧ k + 1 ≤ nat.succ n * (k + 1) := begin
       split,
       { simp },
       { exact self_le_mul }
     end,
     rw [if_pos h₁],
     have h₂ := by calc
     (nat.succ n * (k + 1) - (k + 1)) / (k + 1) + 1
       = ((n + 1) * (k + 1) - (k + 1)) / (k + 1) + 1 : by simp
     ... = ((n * (k + 1) + 1 * (k + 1)) - (k + 1)) / (k + 1) + 1 : by simp [right_distrib]
     ... = ((n * (k + 1) + (k + 1)) - (k + 1)) / (k + 1) + 1 : by simp
     ... = (n * (k + 1)) / (k + 1) + 1 : by rw [nat.add_sub_cancel]
     ... = n + 1 : by rw [←ih],
     simp [h₂] }
end

lemma mul_distrib_of_dvd {a b c : ℕ} : c ∣ a → c ∣ b → a / c + b / c = (a + b) / c := λ ⟨x, h₁⟩ ⟨y, h₂⟩, begin
  rw [h₁, h₂],
  rw [nat.mul_comm c x, nat.mul_comm c y],
  rw [←nat.right_distrib],
  clear _fun_match _fun_match,
  cases c,
  { by simp },
  { rw [←nat_mul_div_eq c x],
     rw [←nat_mul_div_eq c y],
     rw [←nat_mul_div_eq c (x + y)] }
end

lemma dvd_mul (a b : ℕ) : a ∣ a * b := begin
  existsi b, refl
end

lemma suc_odd_even (n : ℕ) : ¬ 2 ∣ n → 2 ∣ n + 1 := begin
  intros h₁,
  by_cases h₂ : 2 ∣ n + 1,
  { exact h₂ },
  { induction n with n ih,
    { exact false.elim (h₁ (by { show 2 ∣ 0, simp })) },
    { have h₃ : ¬ 2 ∣ n := by {
         intro a, cases a with a h, exact h₂ ⟨a + 1, (by { rw [h], ring })⟩ },
       exact false.elim (h₁ (ih h₃ h₁))}}
end

lemma mul_suc_even (n : ℕ) : 2 ∣ n * (n + 1) := begin
  by_cases h₁ : (2 ∣ n),
  { cases h₁ with x h₁,
    rw [h₁],
    simp only [dvd_mul 2 _, nat.mul_assoc] },
  { cases suc_odd_even _ h₁ with x h₁,
     rw [h₁],
     simp only [dvd_mul 2 _, nat.mul_assoc] }
end
