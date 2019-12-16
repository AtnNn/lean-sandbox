import tactic.suggest
import lib.attempt
import logic.function
import tactic.interactive

namespace algorithms

structure array (α : Type) := (size : nat) (get : fin size → α)

namespace array

def index {α : Type} (a : array α) := fin a.size

def set {α} (a : array α) (i : a.index) (v : α) : array α :=
mk a.size $ λ j, if j = i then v else a.get j

lemma empty_eq_empty (a b : array nat) (h: a.size = 0) (g : b.size = 0) : a = b :=
begin
  cases a, cases b,
  cases h, cases g,
  rw array.mk.inj_eq,
  split,
  { refl },
  { apply function.hfunext rfl,
    intros a,
    exact fin.elim0 a }
end

lemma set_set_eq_set {α} {a : array α} {x y : α} {i : a.index} : set (set a i y) i x = set a i x :=
begin
  unfold set,
  rw array.mk.inj_eq,
  split,
  { refl },
  { apply function.hfunext rfl,
    intros b c h,
    rw eq_of_heq h,
    by_cases he : c = i,
    { rw if_pos he, rw if_pos he },
    { rw if_neg he, rw if_neg he,
      dunfold array.set at *,
      simp [he] } }
end

end array

end algorithms
