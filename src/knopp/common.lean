import knopp.natural
import data.rat
import data.fin

universes u

namespace knopp

@[reducible]
def rational := ℚ

@[reducible]
def natural := ℕ+

inductive none_of : list Prop → Prop
| nil : none_of list.nil
| cons {h : Prop} {hs : list Prop} : ¬h → none_of hs → none_of (list.cons h hs)

inductive one_and_only_one : list Prop → Prop
| nil : false → one_and_only_one list.nil
| cons {h : Prop} {hs : list Prop} : (h → none_of hs) → (¬h → one_and_only_one hs) → one_and_only_one (list.cons h hs)

def nat.fix {α : Sort u} (f : Π n, (fin n → α) → α) (n : ℕ) : α :=
begin
  apply f n, intros s,
  induction n with n ih,
  { exfalso, cases s with _ h, cases h },
  { cases s with x hₓ,
    replace hₓ := eq_or_lt_of_le (nat.le_of_lt_succ hₓ),
    by_cases h₂ : x = n,
    { subst n, exact f x ih },
    { apply ih, use x, finish } }
end

end knopp

-- def fib : Π n, (fin n → ℕ) → ℕ
--   | 0 _ := 1
--   | 1 _ := 1
--   | (m + 2) f := f ⟨m + 1, _⟩ + f ⟨m, _⟩
