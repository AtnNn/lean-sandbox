import data.fintype
import data.set.finite

universe u

@[reducible]
def all (α : Type u) : set α := λ _ : α, true

def set_sum (s : set ℕ) [fintype s] : ℕ
:= list.sum $ multiset.sort (nat.le) s.to_finset.val
