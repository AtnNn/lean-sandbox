import lib.nat

universe u

lemma filter_hd {α : Type u} {x : α} {xs : list α} {p : α → Prop} [decidable_pred p]
: p x → list.filter p (x :: xs) = x :: list.filter p xs :=
by {intros, simp [‹p x›]}

-- set_option trace.eqn_compiler.elim_match true
set_option pp.implicit true
-- set_option pp.notation false

#print has_well_founded

#print has_sizeof

def range_list : Π (a b : ℕ) {h : a ≤ b}, list ℕ
| _ _ (nat.less_than_or_equal.refl _) := []
| a b (nat.less_than_or_equal.step c) := b :: @range_list (nat.succ a) b (by { sorry } )
using_well_founded {rel_tac := λ f eqns, tactic.trace f >> tactic.trace eqns >> tactic.trace_state}

def iota := range_list 0

@[simp]
lemma iota_succ {n : ℕ}
: iota (nat.succ n) = 0 :: range_start_size 1 n
:= by { delta iota range_start_size, simp * }

-- set_option pp.notation false

@[simp]
lemma lt_elem_iota {n m : ℕ}
: (n ∈ iota m) = (n < m) := begin

end
