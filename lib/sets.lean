import data.fintype
import data.set.finite

universe u

@[reducible]
def all (α : Type u) : set α := λ _ : α, true

def set_sum (s : set ℕ) [fintype s] : ℕ
:= list.sum $ multiset.sort (nat.le) s.to_finset.val

class has_upper_bound {α} [has_le α] (s : set α) :=
(ub : α) (h : ∀ x : α, s x → x ≤ ub)

instance upper_bound_eq {k : ℕ} : has_upper_bound (λ x, x = k) := ⟨k, by simp⟩

instance uper_bound_le {k : ℕ} : has_upper_bound (λ x, x ≤ k) := ⟨k, by simp⟩

instance uper_bound_lt {k : ℕ} : has_upper_bound (λ x, x < k) := ⟨k, by { intros x h, exact le_of_lt h }⟩

instance uper_bound_and_right {q : Prop} {p : ℕ → Prop} [r : has_upper_bound p] : has_upper_bound (λ x, q ∧ p x) :=
⟨r.ub, by { intros x h, have rh := r.h, exact rh x h.2}⟩

instance uper_bound_and_left {p : ℕ → Prop} {q : Prop} [l : has_upper_bound p] : has_upper_bound (λ x, p x ∧ q) :=
⟨l.ub, by { intros x h, have lh := l.h, exact lh x h.1}⟩

instance uper_bound_set_of {α} [has_le α] {p : α → Prop} [hub : has_upper_bound p]: has_upper_bound (set_of p) := hub

example : has_upper_bound.ub ( λ x , true ∧ x ≤ 2) = 2 := rfl
example : has_upper_bound.ub { x | true ∧ x ≤ 2} = 2 := rfl
