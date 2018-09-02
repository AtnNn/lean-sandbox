import lib.tactics
import lib.nat

universe u

lemma filter_hd {α : Type u} {x : α} {xs : list α} {p : α → Prop} [decidable_pred p]
: p x → list.filter p (x :: xs) = x :: list.filter p xs :=
by {intros, simp [‹p x›]}
