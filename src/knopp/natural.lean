import tactic.interactive
import tactic.rcases
import tactic.tidy
import data.nat.basic

universes u v

namespace knopp

inductive natural | one : natural | succ : natural → natural

namespace natural

def add : natural → natural → natural
| n one := natural.succ n
| n (succ m) := succ (add n m)

instance has_add : has_add natural := ⟨add⟩

def mul : natural → natural → natural
| n one := n
| n (succ m) := n + mul n m

instance has_mul : has_mul natural := ⟨mul⟩

def lt (a b : natural) : Prop := ∃ x, a + x = b

instance has_lt : has_lt natural := ⟨lt⟩

lemma mul_succ {a b} : a * succ b = a + a * b := rfl

lemma add_succ {a b} : a + succ b = succ (a + b) := rfl

lemma one_add_eq_succ {a} : one + a = succ a :=
begin
  induction a with b ih,
  { refl },
  { rw add_succ, rw ih }
end

lemma succ_eq_add_one {a} : succ a = one + a := eq_comm.1 one_add_eq_succ

lemma add_one_eq_succ {a} : a + one = succ a := rfl

lemma one_mul {a} : one * a = a :=
begin
  induction a with b ih,
  { refl },
  { rw mul_succ, rw ih, rw one_add_eq_succ }
end

lemma mul_one {a} : a * one = a := rfl

lemma succ_add {a b} : succ a + b = succ (a + b) :=
begin
  induction b with b ih,
  { refl },
  { rw add_succ,
    rw ih,
    rw add_succ }
end

lemma add_comm {a b : natural} : a + b = b + a :=
begin
  induction b with b ih,
  { rw one_add_eq_succ, refl },
  { rw add_succ,
    rw ih,
    rw succ_add }
end

lemma add_assoc {a b c : natural} : a + b + c = a + (b + c) :=
begin
  induction c with c ih,
  { rw add_comm,
    rw add_one_eq_succ,
    rw add_succ,
    rw succ_eq_add_one },
  { rw add_succ,
    rw ih,
    rw add_succ,
    rw add_succ }
end

lemma succ_mul {a b} : succ a * b = b + (a * b) :=
begin
  induction b with b ih,
  { rw mul_one,
    rw mul_one,
    rw one_add_eq_succ },
  { rw mul_succ,
    rw ih,
    rw mul_succ,
    rw succ_eq_add_one,
    rw succ_eq_add_one,
    rw add_assoc,
    rw add_assoc,
    refine congr (refl (λ a, one + a)) _,
    rw ← add_assoc,
    rw ← add_assoc,
    rw @add_comm a b }
end

lemma mul_comm {a b : natural} : a * b = b * a :=
begin
  induction b with b ih,
  { rw one_mul, refl },
  { rw mul_succ, rw ih, rw succ_mul }
end

lemma mul_add_dist {a b c: natural} : a * (b + c) = a * b + a * c :=
begin
  induction c with c ih,
  { rw add_one_eq_succ,
    rw mul_succ,
    rw mul_one,
    rw add_comm },
  { rw add_succ,
    rw mul_succ,
    rw ih,
    rw mul_succ,
    rw ← add_assoc,
    rw ← add_assoc,
    rw @add_comm a }
end

lemma mul_assoc {a b c : natural} : a * b * c = a * (b * c) :=
begin
  induction c with c ih,
  { rw mul_one, rw mul_one },
  { rw mul_succ,
    rw ih,
    rw mul_succ,
    rw mul_add_dist }
end

lemma succ_ne_one {a} (h : succ a = one) : false :=
begin
  simp at h, assumption
end

lemma not_add_eq {a b : natural} (h : a + b = a) : false :=
begin
  induction a with a ih,
  { revert h,
    rw one_add_eq_succ,
    simp },
  { rw succ_add at h,
    replace h := succ.inj h,
    exact ih h }
end

lemma eq_one_of_mul_eq {a b : natural} (h : a * b = b) : a = one :=
begin
  cases a,
  { refl },
  { rw succ_mul at h,
    exfalso,
    exact not_add_eq h }
end

lemma add_inj {a b c : natural} (h : a + b = a + c) : b = c :=
begin
  induction a with a ih,
  { repeat {rw one_add_eq_succ at h},
    exact succ.inj h },
  { repeat {rw succ_add at h},
    exact ih (succ.inj h) }
end

lemma mul_inj {a b c : natural} (h : a * c = b * c) : a = b :=
begin
  revert a,
  induction b with b ih,
  { intros a h,
    rw one_mul at h,
    exact eq_one_of_mul_eq h },
  { intros a h,
    rw succ_mul at h,
    cases a,
    { rw one_mul at h,
      replace h := eq.symm h,
      exfalso,
      exact not_add_eq h },
    { rw succ_mul at h,
      replace h := add_inj h,
      congr,
      exact ih h } }
end

lemma lt_of_succ_lt_succ {a b} (h : succ a < succ b) : a < b :=
begin
  cases h with c h,
  rw succ_add at h,
  rw succ.inj_eq at h,
  exact ⟨c, h⟩
end

instance decidable_lt : Π {a b : natural}, decidable (lt a b)
| one one := is_false (by { rintro ⟨⟩, apply not_add_eq, assumption })
| one (succ a) := is_true (by { split, rw one_add_eq_succ })
| (succ a) one := is_false (by { rintro ⟨⟩, rw succ_add at *, apply succ_ne_one, assumption })
| (succ a) (succ b) := match @decidable_lt a b with
  | is_false h := is_false (by { intro hh, exact h (lt_of_succ_lt_succ hh) })
  | is_true h := is_true (by { cases h with c h, use c, rw succ_add, rw h })
end

lemma add_ne_one {a b} (h : a + b = one) : false :=
begin
  cases b,
  { rw add_comm at h, exact not_add_eq h },
  { rw add_succ at h, exact succ_ne_one h }
end

meta def autoparam : tactic unit := tactic.tidy

def pred (a : natural) (h : one < a . autoparam) : natural :=
match a, h with
| one, hh := by { exfalso, cases hh with a hh, apply not_add_eq, assumption }
| succ a, _ := a
end

lemma succ_pred_eq_self {a : natural} {h} : succ (pred a) = a :=
begin
  cases a,
  { cases h,
    exfalso,
    apply not_add_eq,
    assumption },
  { unfold pred }
end

lemma one_lt_succ {a : natural} : one < succ a :=
begin
  split,
  rw one_add_eq_succ
end

lemma one_lt_of_succ_lt {a b : natural} (h : succ a < b) : one < b :=
begin
  cases b,
  { exfalso,
    cases h with c h,
    rw [succ_eq_add_one, add_assoc] at h,
    exact not_add_eq h },
  { exact one_lt_succ }
end

lemma pred_succ {a : natural} (h : one < succ a . autoparam) : pred (succ a) h = a :=
begin
  unfold pred
end

lemma eq_pred_of_succ_eq {a b : natural} (h : succ a = b) : a = pred b :=
begin
  cases b,
  { cases h },
  { rw pred_succ,
    exact succ.inj h }
end

lemma lt_pred_of_succ_lt {a b : natural} (h : succ a < b) : a < pred b (one_lt_of_succ_lt h) :=
begin
  cases h with c h,
  use c,
  rw succ_add at h,
  apply eq_pred_of_succ_eq,
  assumption
end

def sub.impl : Π (a b : natural) (h : b < a), natural
| a one _ := pred a
| a (succ b) h :=
have hh : a > one := begin
  cases h with c h,
  split,
  rw one_add_eq_succ,
  rw succ_add at h,
  exact h
end,
sub.impl (pred a _) b (lt_pred_of_succ_lt h)

def sub (a b : natural) (h : b < a . autoparam) : natural := sub.impl a b h

def lt_of_succ_lt {a b : natural} (h : succ a < b) : a < b :=
begin
  cases h with c h,
  use succ c,
  rw succ_add at h,
  rw add_succ,
  assumption
end

lemma sub_succ_eq_pred_sub {a b} {h : succ b < a}: sub a (succ b) h = sub (pred a (one_lt_of_succ_lt h)) b (lt_pred_of_succ_lt h) :=
begin
  unfold sub sub.impl
end

lemma eq_sub_of_add_eq {a b c : natural} (h : a + b = c) : a = sub c b ⟨a, by {rw add_comm, assumption}⟩ :=
begin
  revert c,
  induction b with b ih,
  { intros c h,
    unfold sub sub.impl,
    cases c,
    { rw add_comm at h,
      exfalso,
      apply not_add_eq,
      assumption },
    { rw add_one_eq_succ at h,
      rw pred_succ,
      exact succ.inj h } },
  { intros c h,
    rw sub_succ_eq_pred_sub,
    have hh := h,
    rw add_succ at hh,
    exact ih (eq_pred_of_succ_eq hh) }
end

lemma sub_succ.pred {a b} (h : succ b < a) : sub a b (lt_of_succ_lt h) > one :=
begin
  cases h with c h,
  split, swap, exact c,
  rw [succ_eq_add_one, add_assoc, @add_comm b, ← add_assoc] at h,
  apply eq_sub_of_add_eq,
  assumption
end

lemma sub_succ {a b : natural} (h : succ b < a) : sub a (succ b) = pred (sub a b (lt_of_succ_lt h)) (sub_succ.pred h) :=
begin
  revert a,
  induction b with b ih,
  { intros a h, unfold sub sub.impl },
  { intros a h,
    rw sub_succ_eq_pred_sub,
    rw ih (lt_pred_of_succ_lt h),
    congr }
end

lemma sub_add_eq {a b : natural} {h} : a.sub b + b = a :=
begin
  induction b with b ih,
  { cases a,
    { exfalso, cases h, apply not_add_eq, assumption },
    { unfold sub sub.impl, refl } },
  { rw add_succ,
    rw sub_succ,
    rw ← succ_add,
    rw succ_pred_eq_self,
    apply ih }
end


lemma sub_lt_of_lt {a b : natural} (h : a < b) : sub b a < b :=
begin
  cases h with c h,
  split,
  exact sub_add_eq
end

lemma one_lt_add {a b : natural} : one < a + b :=
begin
  cases b; unfold has_add.add add; exact one_lt_succ
end

lemma add_eq_succ {a b : natural} : a + b = succ (pred (a + b) one_lt_add) :=
begin
  rw succ_pred_eq_self
end

lemma sizeof_succ_eq_succ_sizeof {a : natural} : sizeof (succ a) = 1 + (sizeof a) :=
begin
  unfold sizeof has_sizeof.sizeof natural.sizeof
end

lemma not_lt_one {a : natural} (h : a < one) : false :=
begin
  cases h with c h,
  rw add_eq_succ at h,
  exact succ_ne_one h
end

lemma pos_sizeof {a : natural} : sizeof a > 0 :=
begin
  cases a; unfold sizeof has_sizeof.sizeof natural.sizeof,
  { constructor },
  { exact nat.zero_lt_one_add _ }
end

lemma lt_sizeof_of_lt {a b : natural} (h : a < b) : sizeof a < sizeof b :=
begin
  revert a,
  induction b with b ih; intros a h,
  { exfalso,
    exact not_lt_one h },
  { rw sizeof_succ_eq_succ_sizeof,
    cases a,
    { rw (by { unfold sizeof has_sizeof.sizeof natural.sizeof } : sizeof one = 1),
      apply nat.lt_add_of_pos_right,
      exact pos_sizeof },
    { rw sizeof_succ_eq_succ_sizeof,
      replace h := ih (lt_of_succ_lt_succ h),
      simp [h] } }
end

def mod : natural → natural → natural
| a b := if h : b < a then
have natural.sizeof (sub a b h) < natural.sizeof a :=
  lt_sizeof_of_lt (sub_lt_of_lt h),
mod (a.sub b) b else a

-- set_option pp.all true

#check well_founded.rec

#check well_founded.rec_on

#check acc

#check well_founded

--#print mod._main._pack

#check psigma.rec

set_option trace.class_instances true

example {p : nat → nat → Prop} : psigma.rec (λ a b, p a b) (psigma.mk nat.zero (Π (x : nat.{u}), nat.zero.{v})) := _

/-
lemma mod_lt_succ {a b} : mod a b < succ b :=
begin
  delta mod mod._main mod._main._pack,
  rw well_founded.fix_eq,
  delta psigma.cases_on,
  
end
-/

instance has_one : has_one natural := ⟨one⟩

inductive order (a b : natural) : Prop
| lt : a < b → order
| eq : a = b → order
| gt : b > a → order

instance eq.decidable : Π {a b : natural}, decidable (a = b)
| one one := is_true rfl
| one (succ _) := is_false (by { intro h, exact succ_ne_one (eq.symm h)})
| (succ _) one := is_false (by { intro h, exact succ_ne_one h})
| (succ a) (succ b) := match @eq.decidable a b with
  | is_true h := by { rw ← succ.inj_eq at h, exact is_true h }
  | is_false h := by { apply is_false, intro hh, exact h (succ.inj hh) }
end

def gcd.impl.size : (Σ' (a b : natural), decidable (a = b)) → ℕ
| ⟨a, b, c⟩ := sizeof a + sizeof b + match c with
  | is_true _ := 0
  | is_false _ := 1
end

lemma lt_of_add_lt_add {a b c : natural} (h : a + b < a + c) : b < c :=
begin
  induction a with a ih,
  { repeat { rw one_add_eq_succ at h },
    exact lt_of_succ_lt_succ h },
  { repeat { rw succ_add at h },
    exact ih (lt_of_succ_lt_succ h) }
end

def dvd (a b : natural) : Prop := ∃ c, a = b * c

instance has_dvd : has_dvd natural := ⟨dvd⟩

/-
lemma gcd.impl_wf (a b) (hl : decidable (mod b a = a)) (hr : a ≠ b) : gcd.impl.size ⟨mod b a, a, hl⟩ < gcd.impl.size ⟨a, b, is_false hr⟩ :=
begin
  unfold gcd.impl.size,
  rw nat.add_comm _ (sizeof a),
  rw nat.add_assoc,
  rw nat.add_assoc,
  rw add_lt_add_iff_left _,
  tactic.unfreeze_local_instances,
  cases hl; unfold gcd.impl.size._match_1,
  { rw add_lt_add_iff_right _,
    apply lt_sizeof_of_lt,
    have h := mod_lt_succ,
     },
  {  }
end

def gcd.impl : Π (a b : natural), (decidable (a = b)) → natural
| a _ (decidable.is_true _) := a
| a b (decidable.is_false h) :=
have hh : _ := (gcd.impl_wf a b (by apply_instance) h),
gcd.impl (mod b a) a (by apply_instance)
using_well_founded {rel_tac := λ _ _, `[exact ⟨_, measure_wf gcd.impl.size⟩]}
-/

end natural

end knopp

