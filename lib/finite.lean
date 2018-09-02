import data.fintype
import lib.sets
import lib.lists

#print set

example {α} {s : set α} (x : subtype s) : subtype s := x

/-
instance finite_all_unit : finite (λ (_ : unit), true)
:= finite.mk [()] (λ x _, by {cases x, simp})

def finite_sub [fin : finite (all α)] (s : set α) [decidable_pred s] [decidable_eq α] : finite s :=
  let ⟨xs, h₀⟩ := fin in
  ⟨list.filter s xs, λ x h₁, begin
  have h₂ : x ∈ xs := h₀ x true.intro,
  clear h₀,
  induction xs with y ys ih,
  {simp at *, assumption},
  {by_cases eq_hd: y = x,
    {rw [eq_hd, filter_hd],
      unfold has_mem.mem, delta list.mem,
      simp [h₁], assumption },
    {have xys : x ∈ ys := by {
         simp [‹¬y = x›] at h₂,
         cases h₂; simp * at *},
      by_cases s y; simp *}}
  end⟩

class has_ub (s : set ℕ) := (ub : ℕ) (h : ∀ n, s n → n ≤ ub)

instance finite_ub_nat {s : set ℕ} [decidable_pred s] [ub : has_ub s] : finite s :=
  finite.mk (list.filter s (iota (nat.succ ub.ub))) (by {
    intros x sx,
    have h := ub.h,
    specialize h x sx,
    revert h,
    generalize : has_ub.ub s = u,
    intro,

  })

def set_sum {α : Type u} [has_add α] [has_zero α] (s : set α) [f : finite s] : α :=
  finite.cases_on f (λ l _, list.foldl (λ a b, a + b) 0 l)
-/
