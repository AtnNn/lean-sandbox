import lib.tactics
import lib.nat
import data.list.basic

universe u

open list

lemma filter_hd {α : Type u} {x : α} {xs : list α} {p : α → Prop} [decidable_pred p]
: p x → list.filter p (x :: xs) = x :: list.filter p xs :=
by {intros, simp [‹p x›]}

lemma iota_succ (n : ℕ) : iota (n + 1) = (n + 1) :: iota n := rfl

lemma sum_cons (x : ℕ) (xs : list ℕ) : list.sum (x :: xs) = x + sum xs := begin
  delta list.sum,
  rw [foldl_eq_foldr, foldl_eq_foldr],
  refl,
  exact nat.add_comm,
  exact nat.add_assoc,
  exact nat.add_comm,
  exact nat.add_assoc
end

lemma sum_map_of_sum_mul {xs} {d : ℕ} : list.sum xs * d = list.sum (list.map (λ n, n * d) xs) := begin
  induction xs with x xs ih,
  { simp },
  { rw [list.sum_cons, nat.right_distrib],
     rw [list.map_cons, list.sum_cons],
     simp [ih] }
end
