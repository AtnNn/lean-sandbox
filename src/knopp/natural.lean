import tactic.interactive
import tactic.rcases
import tactic.tidy
import tactic.wlog
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

lemma add_ne_self {a b : natural} (h : a + b = a) : false :=
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
    exact add_ne_self h }
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
      exact add_ne_self h },
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
| 1 1 := is_false (by { rintro ⟨⟩, apply add_ne_self, assumption })
| 1 (a + 1) := is_true (by { split, rw @one_add_eq_succ a, refl })
| (a + 1) 1 := is_false (by { rintro ⟨⟩, rw succ_add at *, apply succ_ne_one, assumption })
| (a + 1) (b + 1) := match @decidable_lt a b with
  | is_false h := is_false (by { intro hh, exact h (lt_of_succ_lt_succ hh) })
  | is_true h := is_true (by { cases h with c h, use c, rw succ_add, rw h })
end

lemma add_ne_one {a b : natural} (h : a + b = 1) : false :=
begin
  cases b,
  { rw add_comm at h, exact add_ne_self h },
  { rw [succ_eq_add_one, add_succ] at h, exact succ_ne_one h }
end

meta def autoparam : tactic unit := tactic.tidy

def pred.total : natural → natural
| 1 := 1
| (x + 1) := x

def pred (a : natural) (h : 1 < a . autoparam) : natural := pred.total a
lemma succ_pred_eq_self {a : natural} {h} : (pred a) + 1 = a :=
begin
  cases a,
  { cases h,
    exfalso,
    apply add_ne_self,
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
    exact add_ne_self h },
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

def sub.total : Π (a b : natural), natural
| a 1 := pred.total a
| a (b + 1) :=
sub.total (pred.total a) b

def sub (a b : natural) (h : b < a . autoparam) : natural := sub.total a b

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
  unfold sub sub.total pred
end

lemma eq_sub_of_add_eq {a b c : natural} (h : a + b = c) : a = sub c b ⟨a, by {rw add_comm, assumption}⟩ :=
begin
  revert c,
  induction b using knopp.natural.induction with b ih,
  { intros c h,
    unfold sub sub.total,
    subst c,
    unfold pred.total },
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
  { intros a h, unfold sub sub.total, refl },
  { intros a h,
    rw sub_succ_eq_pred_sub,
    revert h,
    rw succ_eq_add_one,
    intro h,
    rw ih (lt_pred_of_succ_lt h),
    congr }
end

lemma sub_add_eq {a b : natural} {h} : a.sub b + b = a :=
begin
  induction b using knopp.natural.induction with b ih,
  { cases a,
    { exfalso, cases h, apply add_ne_self, assumption },
    { unfold sub sub.total, refl } },
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

lemma sizeof_succ_eq_succ_sizeof {a : natural} : sizeof (succ a) = 1 + (sizeof a) :=
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

instance has_mod : has_mod natural := ⟨mod⟩

def mod_def {a b : natural} : a % b = if h : b < a then (sub a b) % b else a := mod.equations._eqn_1 a b

lemma not_lt_of_eq {a : natural} : ¬ a < a :=
begin
  intro h,
  cases h with x h,
  apply add_ne_self h
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
  exact add_ne_self hx
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

lemma le_of_lt_succ {a b : natural} (h : a < b + 1) : a ≤ b :=
begin
  cases h with c h,
  cases c with c,
  { left, exact add_inj_right h },
  { right,
    use c,
    rw [succ_eq_add_one, ←add_assoc] at h,
    exact add_inj_right h }
end

instance decidable_eq : decidable_eq natural
| 1 1 := decidable.is_true rfl
| (n + 1) (m + 1) := match decidable_eq n m with
  | decidable.is_true h := decidable.is_true (congr_arg (λ x, add x 1) h)
  | decidable.is_false h := decidable.is_false (h ∘ add_inj_right)
end
| 1 (m + 1) := decidable.is_false (succ_ne_one ∘ eq.symm)
| (n + 1) 1 := decidable.is_false succ_ne_one

lemma strong_induction {p : natural → Sort u} (n : natural) (h : ∀ n, (∀ m, m < n → p m) → p n) : p n :=
begin
  suffices hh : ∀ n m, m < n → p m, { apply h, apply hh },
  intros n, induction n using knopp.natural.induction with n ih,
  { intros m hh, exfalso, apply not_lt_one, exact hh },
  { intros m hh,
    apply or.by_cases (le_of_lt_succ hh),
    { intros, subst m, apply h, apply ih },
    { intros, apply ih, assumption } }
end

lemma le_self {a : natural} : a ≤ a := or.inl rfl

@[simp]
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

lemma le_or_gt (a b : natural) : a ≤ b ∨ a > b :=
if h₁ : b < a then or.inr h₁ else
if h₂ : a = b then or.inl (or.inl h₂) else
if h₃ : a < b then or.inl (or.inr h₃) else begin
  exfalso,
  induction a using knopp.natural.induction with a ih,
  { cases b, exact h₂ rfl, exact h₃ one_lt_succ },
  { apply ih; intro h,
    { apply h₁, cases h with c h, use c + 1, rw ←add_assoc, congr, assumption },
    { subst a, apply h₁, constructor, refl },
    { cases h with c h, subst b, cases c,
      { apply h₂, refl },
      { apply h₃, constructor,
        rw succ_eq_add_one,
        rw @add_comm c,
        rw add_assoc } } }
end

lemma cases_le_or_gt {p : Prop} (a b : natural) (h₁ : a ≤ b → p) (h₂ : a > b → p) : p :=
begin
  have h := le_or_gt a b,
  cases h; cc
end

instance decidable_le {a b : natural} : decidable (a ≤ b) :=
if h₁ : a < b then decidable.is_true (or.inr h₁) else
if h₂ : a = b then decidable.is_true (or.inl h₂) else
decidable.is_false begin
  intro h, cases h, exact h₂ h, exact h₁ h
end

lemma mod_le_right {a b : natural} : a % b ≤ b :=
begin
  induction a using knopp.natural.strong_induction with a ih,
  apply cases_le_or_gt a b; intro h,
  { rw mod_of_le; assumption },
  { rw mod_step,
    { apply ih, constructor, apply sub_add_eq },
    { assumption }}
end

lemma succ_sub_succ {a b : natural} {h} : sub (a + 1) (b + 1) = sub a b (lt_of_succ_lt_succ h) :=
begin
  unfold sub,
  rw sub.total.equations._eqn_2,
  rw pred.total.equations._eqn_2
end

lemma add_sub_eq {a b : natural} {h} : sub (a + b) b h = a :=
begin
  induction b using knopp.natural.induction with b ih,
  { refl },
  { conv in (a + (b + 1)) { rw ← add_assoc },
    rwa succ_sub_succ, exact ih }
end

lemma mod_le_left {n m : natural} : n % m ≤ n :=
begin
  suffices h : ∀ x, x ≤ n → (x % m) ≤ n,
  { apply h, exact or.inl rfl, },
  { intros x h,
    induction x using knopp.natural.strong_induction with x ih,
    rw mod_def, by_cases hh: m < x,
    { rw dif_pos, tactic.swap,
      { assumption, },
      { apply ih,
        { use m, rw sub_add_eq, },
        { cases h with y,
          { subst x, right, apply sub_lt_of_lt, },
          { cases h with y h, right, use m + y,
            rw ← add_assoc, rw sub_add_eq, assumption, }, }, }, },
    { rw dif_neg,
      { assumption, },
      { assumption, }, }, },
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

lemma lt_of_add_lt_add {a b c : natural} (h : a + b < a + c) : b < c :=
begin
  induction a using knopp.natural.induction with a ih,
  { repeat { rw one_add_eq_succ at h },
    exact lt_of_succ_lt_succ h },
  { repeat { rw succ_add at h },
    exact ih (lt_of_succ_lt_succ h) }
end

def dvd (a b : natural) : Prop := ∃ c, a = b * c

instance has_dvd : has_dvd natural := ⟨dvd⟩

lemma gcd_wf (n m : natural) (hx : m % n ≠ n) : sizeof (m % n) < sizeof n :=
begin
  apply lt_sizeof_of_lt,
  cases @mod_le_right m n,
  { constructor,
    exfalso,
    exact hx h,
    exact 1 },
  { assumption }
end

def gcd : natural → natural → natural
| n m := let x := m % n in if h: x = n then x else
have hh : _ := gcd_wf n m h,
gcd x n

lemma gcd_def' {a b : natural} : gcd a b = if b % a = a then b % a else gcd (b % a) a :=
begin
  conv { to_lhs, rw gcd.equations._eqn_1 }
end

lemma gcd_same {a : natural} : gcd a a = a :=
begin
  rw gcd_def',
  rw if_pos mod_of_eq,
  exact mod_of_eq
end

lemma  gcd_def {a b : natural} : gcd a b = if a = b then a else gcd (b % a) a :=
begin
  by_cases a = b,
  { rw if_pos h, rw h, exact gcd_same },
  { rw if_neg h,
    conv in (gcd a b) { rw gcd_def' },
    by_cases hh : b % a = a,
    { rw if_pos hh, rw hh, rw gcd_same },
    { rw if_neg hh } }
end

lemma gcd_step {a b : natural} : gcd a b = gcd (b % a) a :=
begin
  conv in (gcd a b) { rw gcd_def },
  by_cases h: a = b,
  { rw if_pos h, rw h, rw mod_of_eq, rw gcd_same },
  { rw if_neg h }
end

lemma le_or_le_symm {x y : natural} : x ≤ y ∨ y ≤ x :=
begin
  have hh := le_or_gt x y, cases hh,
    { left, assumption },
    { right, exact or.inr hh }
end

lemma sub_lt_self {a b : natural} {h} : sub a b < a :=
begin
  constructor,
  exact sub_add_eq
end

lemma gcd_symm {x y : natural} : gcd x y = gcd y x :=
begin
  wlog h : y ≤ x, { exact le_or_le_symm },
  rw gcd_def,
  cases h,
  { rw if_pos h.symm, subst y, rw gcd_same },
  { rw if_neg,
    rw mod_of_le,
    exact or.inr h,
    intro hh,
    cases h with x h,
    subst y,
    exact add_ne_self h }
end

lemma div_wf {a b : natural} (h : b + 1 < a) : natural.sizeof (sub a (b + 1) h) < natural.sizeof a := begin
  apply lt_sizeof_of_lt,
  exact sub_lt_self
end

lemma le_irrefl {a : natural} (h : a < a) : false :=
begin
  cases h,
  apply add_ne_self,
  assumption
end

lemma sub_dvd_of_dvd {a b: natural} (h : a ∣ b) {hle} : sub a b ∣ b :=
begin
  cases h with x h,
  cases x,
  { rw [one_eq_1, mul_one] at h, subst a, exfalso, exact le_irrefl hle },
  { rw [succ_eq_add_one, mul_succ] at h,
    subst a,
    conv in (b + _) { rw add_comm },
    rw add_sub_eq,
    use x }
end

def div.impl : Π (a b : natural), (a ∣ b) → natural
| a 1 _ := a
| a (b + 1) hd := if h : b + 1 < a then
have hh : _ := div_wf h,
div.impl (sub a (b + 1) h) (b + 1) (sub_dvd_of_dvd hd) else 1

def div (a b : natural) (h : a ∣ b . autoparam) := div.impl a b h

lemma mod_one {a : natural} : a % 1 = 1 :=
begin
  have h := @mod_le_right a 1,
  cases h,
  { assumption },
  { exfalso, exact not_lt_one h }
end

lemma gcd_one {a : natural} : gcd a 1 = 1 :=
begin
  rw [gcd_symm, gcd_step, mod_one, gcd_same]
end

lemma le_of_mod_eq {a b : natural} (h : a % b = a) : a ≤ b :=
begin
  rw mod_def at h,
  split_ifs at h,
  sorry
end

@[simp]
lemma gcd_dvd_left {a b : natural} : a ∣ gcd a b :=
begin
  revert a,
  induction b using knopp.natural.strong_induction with b ih,
  intro a,
  have h := le_or_gt (b % a) b,
  cases h, cases h,
  { replace h := le_of_mod_eq h, sorry }
end

end natural

end knopp

