import tactic.interactive
import tactic.rcases
import tactic.tidy
import data.nat.basic

universes u v

namespace knopp

inductive natural | one : natural | succ : natural → natural

namespace natural

instance has_one : has_one natural := ⟨one⟩

def add : natural → natural → natural
| n 1 := succ n
| n (succ m) := succ (add n m)

instance has_add : has_add natural := ⟨add⟩

def mul : natural → natural → natural
| n 1 := n
| n (m + 1) := n + mul n m

instance has_mul : has_mul natural := ⟨mul⟩

def induction {p : natural → Sort u} {a : natural} : p 1 → (∀ x, p x → p (x + 1)) → p a := natural.rec_on a

def lt (a b : natural) : Prop := ∃ x, a + x = b

instance has_lt : has_lt natural := ⟨lt⟩

lemma add_succ {a b : natural} : a + (b + 1) = (a + b) + 1 := rfl

lemma one_add_eq_succ {a} : 1 + a = succ a :=
begin
  induction a using knopp.natural.induction with b ih,
  { refl },
  { rw add_succ, rw ih, refl }
end

lemma add_one_eq_succ {a : natural} : a + 1 = succ a := rfl

lemma mul_succ {a b : natural} : a * (b + 1) = a + a * b := rfl

lemma succ_eq_add_one {a} : succ a = a + 1 := eq_comm.1 add_one_eq_succ

lemma succ_add {a b : natural} : (a + 1) + b = (a + b) + 1 :=
begin
  induction b using knopp.natural.induction with b ih,
  { refl },
  { rw add_succ,
    rw ih,
    rw add_succ }
end

lemma add_comm {a b : natural} : a + b = b + a :=
begin
  induction b using knopp.natural.induction with b ih,
  { rw one_add_eq_succ, refl },
  { rw add_succ,
    rw ih,
    rw succ_add }
end

lemma one_mul {a : natural} : 1 * a = a :=
begin
  induction a using knopp.natural.induction with b ih,
  { refl },
  { rw mul_succ, rw ih, exact add_comm }
end

lemma mul_one {a : natural} : a * 1 = a := rfl

lemma add_assoc {a b c : natural} : a + b + c = a + (b + c) :=
begin
  induction c using knopp.natural.induction with c ih,
  { rw add_comm,
    rw add_succ,
    rw add_comm },
  { rw add_succ,
    rw ih,
    rw add_succ,
    rw add_succ }
end

lemma succ_mul {a b : natural} : (a + 1) * b = b + (a * b) :=
begin
  induction b using knopp.natural.induction with b ih,
  { rw mul_one,
    rw mul_one,
    rw add_comm },
  { rw mul_succ,
    rw ih,
    rw mul_succ,
    rw ←add_assoc,
    rw ←add_assoc,
    rw @add_comm a,
    rw @add_comm b,
    rw @add_assoc 1,
    rw @add_comm a,
    rw ←@add_assoc 1
    }
end

lemma mul_comm {a b : natural} : a * b = b * a :=
begin
  induction b using knopp.natural.induction with b ih,
  { rw one_mul, refl },
  { rw mul_succ, rw ih, rw succ_mul }
end

lemma mul_add_dist {a b c: natural} : a * (b + c) = a * b + a * c :=
begin
  induction c using knopp.natural.induction with c ih,
  { rw mul_succ,
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
  induction c using knopp.natural.induction with c ih,
  { rw mul_one, rw mul_one },
  { rw mul_succ,
    rw ih,
    rw mul_succ,
    rw mul_add_dist }
end

lemma succ_ne_one {a : natural} (h : a + 1 = 1) : false := natural.no_confusion h

lemma not_add_eq_self {a b : natural} (h : a + b = a) : false :=
begin
  induction a using knopp.natural.induction with a ih,
  { revert h,
    rw add_comm,
    exact succ_ne_one },
  { rw succ_add at h,
    replace h := succ.inj h,
    exact ih h }
end

lemma eq_one_of_mul_eq {a b : natural} (h : a * b = b) : a = 1 :=
begin
  cases a,
  { refl },
  { rw [succ_eq_add_one, succ_mul] at h,
    exfalso,
    exact not_add_eq_self h }
end

lemma add_inj_left {a b c : natural} (h : a + b = a + c) : b = c :=
begin
  induction a using knopp.natural.induction with a ih,
  { repeat {rw one_add_eq_succ at h},
    exact succ.inj h },
  { repeat {rw succ_add at h},
    exact ih (succ.inj h) }
end

lemma add_inj_right {a b c : natural} (h : a + c = b + c) : a = b := begin
  rw @add_comm a at h,
  rw @add_comm b at h,
  exact add_inj_left h
end

lemma one_eq_1 : one = 1 := rfl

lemma mul_inj {a b c : natural} (h : a * c = b * c) : a = b :=
begin
  revert a,
  induction b using knopp.natural.induction with b ih,
  { intros a h,
    rw one_mul at h,
    exact eq_one_of_mul_eq h },
  { intros a h,
    rw succ_mul at h,
    cases a,
    { rw [one_eq_1, one_mul] at h,
      replace h := eq.symm h,
      exfalso,
      exact not_add_eq_self h },
    { rw [succ_eq_add_one, succ_mul] at h,
      replace h := add_inj_left h,
      congr,
      exact ih h } }
end

lemma lt_of_succ_lt_succ {a b : natural} (h : a + 1 < b + 1) : a < b :=
begin
  cases h with c h,
  use c,
  rw [add_assoc, @add_comm 1, ←add_assoc] at h,
  exact add_inj_right h
end

instance decidable_lt : Π {a b : natural}, decidable (lt a b)
| 1 1 := is_false (by { rintro ⟨⟩, apply not_add_eq_self, assumption })
| 1 (a + 1) := is_true (by { split, rw @one_add_eq_succ a, refl })
| (a + 1) 1 := is_false (by { rintro ⟨⟩, rw succ_add at *, apply succ_ne_one, assumption })
| (a + 1) (b + 1) := match @decidable_lt a b with
  | is_false h := is_false (by { intro hh, exact h (lt_of_succ_lt_succ hh) })
  | is_true h := is_true (by { cases h with c h, use c, rw succ_add, rw h })
end

lemma add_ne_one {a b : natural} (h : a + b = 1) : false :=
begin
  cases b,
  { rw add_comm at h, exact not_add_eq_self h },
  { rw [succ_eq_add_one, add_succ] at h, exact succ_ne_one h }
end

meta def autoparam : tactic unit := tactic.tidy

def pred (a : natural) (h : 1 < a . autoparam) : natural :=
match a, h with
| 1, hh := by { exfalso, cases hh with a hh, apply not_add_eq_self, assumption }
| a + 1, _ := a
end

lemma succ_pred_eq_self {a : natural} {h} : (pred a) + 1 = a :=
begin
  cases a,
  { cases h,
    exfalso,
    apply not_add_eq_self,
    assumption },
  { refl }
end

lemma one_lt_succ {a : natural} : 1 < a + 1 :=
begin
  split,
  rw one_add_eq_succ,
  refl
end

lemma one_lt_of_succ_lt {a b : natural} (h : a + 1 < b) : 1 < b :=
begin
  cases b,
  { exfalso,
    cases h with c h,
    rw [@add_comm a, add_assoc] at h,
    exact not_add_eq_self h },
  { exact one_lt_succ }
end

lemma pred_succ {a : natural} {h : 1 < a + 1} : pred (a + 1) h = a := rfl

set_option trace.check true

lemma eq_pred_of_succ_eq {n m : natural} (h : n + 1 = m) : n = pred m (by { use n, rwa add_comm }):=
begin
  cases m,
  { cases h },
  { revert h,
    rw succ_eq_add_one,
    intro h,
    rw pred_succ,
    exact add_inj_right h }
end

lemma lt_pred_of_succ_lt {a b : natural} (h : a + 1 < b) : a < pred b (one_lt_of_succ_lt h) :=
begin
  cases h with c h,
  use c,
  rw [succ_add] at h,
  apply eq_pred_of_succ_eq,
  assumption
end

def sub.impl : Π (a b : natural) (h : b < a), natural
| a 1 _ := pred a
| a (b + 1) h :=
have hh : a > 1 := begin
  cases h with c h,
  split,
  rw add_comm,
  rw succ_add at h,
  exact h
end,
sub.impl (pred a _) b (lt_pred_of_succ_lt h)

def sub (a b : natural) (h : b < a . autoparam) : natural := sub.impl a b h

def lt_of_succ_lt {a b : natural} (h : a + 1 < b) : a < b :=
begin
  cases h with c h,
  use c + 1,
  rw succ_add at h,
  rw add_succ,
  assumption
end

lemma sub_succ_eq_pred_sub {a b : natural} {h : b + 1 < a}: sub a (b + 1) h = sub (pred a (one_lt_of_succ_lt h)) b (lt_pred_of_succ_lt h) :=
begin
  unfold sub sub.impl
end

lemma eq_sub_of_add_eq {a b c : natural} (h : a + b = c) : a = sub c b ⟨a, by {rw add_comm, assumption}⟩ :=
begin
  revert c,
  induction b using knopp.natural.induction with b ih,
  { intros c h,
    unfold sub sub.impl,
    cases c,
    { rw add_comm at h,
      exfalso,
      apply not_add_eq_self,
      assumption },
    { revert h,
      rw succ_eq_add_one,
      intro h,
      rw pred_succ,
      exact succ.inj h } },
  { intros c h,
    rw sub_succ_eq_pred_sub,
    have hh := h,
    rw add_succ at hh,
    exact ih (eq_pred_of_succ_eq hh) }
end

lemma sub_succ.pred {a b : natural} (h : b + 1 < a) : sub a b (lt_of_succ_lt h) > 1 :=
begin
  cases h with c h,
  split, swap, exact c,
  rw [add_assoc, add_comm] at h,
  apply eq_sub_of_add_eq,
  assumption
end

lemma sub_succ {a b : natural} (h : b + 1 < a) : sub a (b + 1) = pred (sub a b (lt_of_succ_lt h)) (sub_succ.pred h) :=
begin
  revert a,
  induction b with b ih,
  { intros a h, unfold sub sub.impl, refl },
  { intros a h,
    rw sub_succ_eq_pred_sub,
    revert h,
    rw succ_eq_add_one,
    intro h,
    }
end

lemma sub_add_eq {a b : natural} {h} : a.sub b + b = a :=
begin
  induction b with b ih,
  { cases a,
    { exfalso, cases h, apply not_add_eq_self, assumption },
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

lemma one_lt_add {a b : natural} : 1 < a + b :=
begin
  cases b; unfold has_add.add add; exact one_lt_succ
end

lemma add_eq_succ {a b : natural} : a + b = (pred (a + b) one_lt_add) + 1 :=
begin
  rw succ_pred_eq_self
end

lemma sizeof_succ_eq_succ_sizeof {a : natural} : sizeof (a + 1) = 1 + (sizeof a) :=
begin
  unfold sizeof has_sizeof.sizeof natural.sizeof
end

lemma not_lt_one {a : natural} (h : a < 1) : false :=
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
    { rw (by { unfold sizeof has_sizeof.sizeof natural.sizeof } : sizeof 1 = 1),
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

instance has_mod : has_mod natural := ⟨mod⟩

def mod_def {a b : natural} : a % b = if h : b < a then (sub a b) % b else a := mod.equations._eqn_1 a b

lemma not_lt_of_eq {a : natural} : ¬ a < a :=
begin
  intro h,
  cases h with x h,
  apply not_add_eq_self h
end

lemma mod_of_eq {a : natural} : a % a = a :=
begin
  rw mod_def,
  apply dif_neg,
  exact not_lt_of_eq
end

def le (a b : natural) := a = b ∨ a < b

instance has_le : has_le natural := ⟨le⟩

lemma not_lt_and_lt_symm {a b : natural} : ¬ (a < b ∧ b < a) :=
begin
  intro h,
  cases h with hl hr,
  cases hl with x hx,
  cases hr with y hy,
  rw [←hy, add_assoc] at hx,
  exact not_add_eq_self hx
end

lemma mod_of_le {a b : natural} (h : a ≤ b) : a % b = a :=
begin
  cases h,
  { rw h, exact mod_of_eq },
  { rw mod_def,
    rw dif_neg,
    intro hh,
    exact not_lt_and_lt_symm ⟨h, hh⟩ }
end

lemma mod_step {a b : natural} (h : a > b) : a % b = (sub a b) % b :=
begin
  rw mod_def,
  rw dif_pos h
end

lemma strong_induction {p : natural → Sort u} (n : natural) (hb : p 1) (hi : ∀ n m, n < m → p n → p m) : p n :=
begin
  suffices h : ∀ x y, x < y → p x,
  { apply h n (n + 1), use 1, refl },
  { intro x, induction x with x ih,
    { intros y h, assumption },
    { intros y h,
      apply hi x,
      { use 1, refl },
      { apply ih y,
        apply lt_of_succ_lt,
        assumption } } }
end

lemma le_self {a : natural} : a ≤ a := or.inl rfl

lemma one_le {a : natural} : 1 ≤ a :=
begin
  cases a,
  { left, refl },
  { right, use a, exact one_add_eq_succ }
end

lemma one_mod {a : natural} : 1 % a = 1 :=
begin
  apply mod_of_le,
  exact one_le
end

lemma cases {p : natural → Sort u} (a : natural) : p 1 → (∀ n, p n → p (n + 1)) → p a := natural.rec_on a

lemma mod_le_self {a b : natural} : a % b ≤ b :=
begin
  induction a using knopp.natural.strong_induction with x y  h1 h2,
  { apply cases b,
    { rw mod_of_eq, exact le_self },
    { intros b h, rw one_mod, right, use b, rw add_comm }},
  {  }
end

inductive order (a b : natural) : Prop
| lt : a < b → order
| eq : a = b → order
| gt : b > a → order

instance eq.decidable : Π {a b : natural}, decidable (a = b)
| 1 1 := is_true rfl
| 1 (_ + 1) := is_false (by { intro h, exact succ_ne_one (eq.symm h)})
| (_ + 1) 1 := is_false (by { intro h, exact succ_ne_one h})
| (a + 1) (b + 1) := match @eq.decidable a b with
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

