universes u v

def divides (a b : ℕ) := has_dvd.dvd a b

class finite {α : Type u} (s : set α) := (xs : list α) (h : ∀ x, s x → x ∈ xs)

instance finite_all_unit : finite (λ (_ : unit), true)
:= finite.mk [()] (λ x _, by {cases x, simp})

@[reducible]
def const {α : Sort u} (x : Sort v) := λ (_ : α), x

@[reducible]
def all (α : Sort u) := @const α true

lemma filter_hd {α : Type u} {x : α} {ys : list α} {p : α → Prop} [decidable_pred p]
: p x → list.filter p (x :: ys) = x :: list.filter p ys :=
by {intros, simp [‹p x›]}

def finite_sub {α : Type u} [fin : finite (all α)] (s : set α) [decidable_pred s] [decidable_eq α] : finite s :=
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

def set_sum {α : Type u} [has_add α] [has_zero α] (s : set α) [f : finite s] : α :=
  finite.cases_on f (λ l _, list.foldl (λ a b, a + b) 0 l)

def problem : ℕ :=
  set_sum { n | (divides 3 n ∨ divides 5 n) ∧ n < 1000 }

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
