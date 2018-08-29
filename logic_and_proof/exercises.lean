-- § 4.7
section

variables A B C D : Prop

example : A ∧ (A → B) → B := λ ⟨a, f⟩, f a

example : A → ¬(¬A ∧ B) := λ a ⟨f, b⟩, f a

example : ¬ (A ∧ B) → (A → ¬B) := λ f a b, f ⟨a, b⟩

example (h₁ : A ∨ B) (h₂ : A → C) (h₃ : B → D) : C ∨ D := h₁.cases_on (or.inl ∘ h₂) (or.inr ∘ h₃)

example (h : ¬A ∧ ¬B) : ¬(A ∨ B) := let ⟨f, g⟩ := h in λ ab, ab.cases_on f g

lemma t : ¬ (A ↔ ¬A) := λ ⟨f, g⟩, let a := g (λ a, f a a) in f a a

end

-- § 5.3
section

variables {A B C D : Prop}

example : (A ∨ ¬A) → (¬¬A → A) := λ d f, d.cases_on id (false.rec _ ∘ f)

variable em : ∀ {p : Prop}, p ∨ ¬p
variable by_contradiction : ∀ {p : Prop}, ¬¬p → p

example : ¬A ∨ ¬B → ¬(A ∧ B) := λ d ⟨a, b⟩, d.cases_on (λ f, f a) (λ f, f b)

example : ¬(A ∧ B) → ¬A ∨ ¬B := λ f, em.cases_on (λ a, or.inr (λ b, f ⟨a, b⟩)) (λ f, or.inl (λ a, f a))

example : (A → B) → ¬A ∨ B := λ f, em.cases_on (or.inr ∘ f) or.inl

lemma step1 (h₁ : ¬(A ∧ B)) (h₂ : A) : ¬A ∨ ¬B :=
have ¬B, from λ b, h₁ ⟨h₂, b⟩,
show ¬A ∨ ¬B, from or.inr this

lemma step2 (h₁ : ¬(A ∧ B)) (h₂ : ¬(¬A ∨ ¬B)) : false :=
have ¬A, from
assume : A,
have ¬A ∨ ¬B, from (step1 h₁ ‹A›),
show false, from h₂ this,
show false, from h₂ (or.inl ‹¬A›)

theorem step3 (h : ¬(A ∧ B)) : ¬A ∨ ¬B :=
  by_contradiction
    (assume h' : ¬(¬A ∨ ¬B),
    show false, from step2 h h')

example (h : ¬B → ¬A) : A → B := λ a, by_contradiction (λ f, h f a)

example (h : A → B) : ¬A ∨ B := em.cases_on (or.inr ∘ h) or.inl

end

-- § 8.6
section

variables {T : Type} {A B C : T → Prop} {even odd : T → Prop} {s : T → T}

example : (∀ x, A x → B x) → ((∀ x, A x) → (∀ x, B x)) := λ f g x, f x (g x)

example : (∀ x, A x ∨ B x) → (∀ y, ¬(A y)) → (∀ x, B x) := λ f g x, (f x).cases_on (false.rec _ ∘ g x) id

example (h₁ : ∀ x, even x ∨ odd x) (h₂ : ∀ x, odd x → even (s x)) : ∀ x,  even x ∨ even (s x) :=
  λ x, (h₁ x).cases_on or.inl (or.inr ∘ h₂ x)

example : (∃ x, A x) ∨ (∃ x, B x) → ∃ x, (A x ∨ B x) :=
  λ d, d.cases_on (λ ⟨x, p⟩, (⟨x, or.inl p⟩ : ∃ x, (A x ∨ B x))) (λ ⟨x, p⟩, ⟨x, or.inr p⟩)

example (h₁ : ∃ x, A x ∧ B x) (h₂ : ∀ x, A x ∧ B x → C x) : (∃ x, A x ∧ C x) :=
  let ⟨x, ⟨a, b⟩⟩ := h₁ in ⟨x, ⟨a, h₂ x ⟨a, b⟩⟩⟩

variables {politician : T → Prop} {trusts : T → T → Prop}

example : (∀ x y, politician x → ¬(trusts y x)) ↔ (∀ x y, trusts y x → ¬(politician x)) :=
  ⟨λ f x y t p, f x y p t, λ f x y p t, f x y t p⟩

variables {person : Type} {young healthy likes_baseball active : person → Prop}

example
  (h₁ : ∀ p, young p ∧ healthy p → likes_baseball p)
  (h₂ : ∀ p, active p → healthy p)
  (h₃ : ∃ p, young p ∧ active p)
  : ∃ p, likes_baseball p :=
  let ⟨p, ⟨y, a⟩⟩ := h₃ in ⟨p, h₁ p ⟨y, h₂ p a⟩⟩

end

section
variables {T : Type} {f : T → T} {P : T → Prop}
variable {refl : ∀ {t : T}, t = t}
variable {symm : ∀ {s t : T}, s = t → t = s}
variable {trans : ∀ {r s t : T}, r = s → s = t → r = t}
variable {congr : ∀ {s t : T}, s = t → f s = f t}
variable {subst : ∀ {s t : T}, s = t → P s → P t}

example : ∀ {x y z : T}, x = z → y = z → x = y :=
  λ x y z xz yz, trans xz (symm yz)
end

section
  variables {T : Type}
  example
    (h₁ : ∀ (x : T), x = x)
    (h₂ : ∀ (u v w : T), u = w → v = w → u = v)
    : ∀ x y, (x = y → y = x) :=
    λ x y xy, h₂ _ _ _ (h₁ y) xy
end

section
  variables {T: Type} {x : T} {A B : T → Prop}

  example : ¬(∃x, A x ∧ B x) ↔ (∀x, A x → ¬(B x)) := ⟨λ f x a b, (f ⟨x, ⟨a, b⟩⟩).elim, λ f ⟨x, ⟨a, b⟩⟩, f x a b⟩

  open classical

  example : ¬(∀x, A x) → ∃x, ¬(A x) :=
    λ f, by_contradiction (λ g, f (λ x, by_contradiction (λ h, g ⟨x, h⟩)))

  example : ¬(∀x, A x → B x) ↔ (∃x, A x ∧ ¬(B x)) :=
    ⟨λ f, by_contradiction (λ g, f (λ x a, (by_contradiction (λ h, g ⟨x, ⟨a, h⟩⟩) : B x))),
     λ ⟨x, ⟨a, f⟩⟩ g, (f (g x a)).elim⟩

variables {f : T → T} {P : T → Prop}
variable {refl : ∀ {t : T}, t = t}
variable {symm : ∀ {s t : T}, s = t → t = s}
variable {trans : ∀ {r s t : T}, r = s → s = t → r = t}
variable {congr : ∀ {s t : T}, s = t → f s = f t}
variable {subst : ∀ {s t : T}, s = t → P s → P t}

def L (P : T → Prop) := ∃ (x : T), P x ∧ ∀ y, P y → y = x
def R (P : T → Prop) := ∃ (x : T), P x ∧ ∀ y y', P y ∧ P y' → y = y'

example : L A → R A :=
  λ ⟨x, ax, f⟩, ⟨x, ax, (λ y y' ⟨ay, ay'⟩, trans (f y ay) (symm (f y' ay')))⟩

example : R A → L A :=
  λ ⟨x, ax, f⟩, ⟨x, ax, λ y ay, f y x ⟨ay, ax⟩⟩
end

-- § 9.5
section
  variable A : Type
  variable f : A → A
  variable P : A → Prop
  variable h : ∀ x, P x → P (f x)
  example : ∀ y, P y → P (f (f y)) :=
    λ _ py, h _ (h _ py).
end

section
  variable U : Type
  variables A B : U → Prop
  example : (∀ x, A x ∧ B x) → ∀ x, A x :=
    λ f x, (f x).elim_left
end

section
variable U : Type
variables A B C : U → Prop
variable h1 : ∀ x, A x ∨ B x
variable h2 : ∀ x, A x → C x
variable h3 : ∀ x, B x → C x
example : ∀ x, C x :=
  λ x, (h1 x).elim (h2 x) (h3 x)
end

section
variable not_iff_not_self (P : Prop) : ¬ (P ↔ ¬ P)
variable Person : Type
variable shaves : Person → Person → Prop
variable barber : Person
variable h : ∀ x, shaves barber x ↔ ¬ shaves x x
example : false :=
  not_iff_not_self _ (h barber)
end

section
variable U : Type
variables A B : U → Prop
example : (∃ x, A x) → ∃ x, A x ∨ B x :=
  λ ⟨x, a⟩, ⟨x, or.inl a⟩
end

section
variable U : Type
variables A B : U → Prop
variable h1 : ∀ x, A x → B x
variable h2 : ∃ x, A x
example : ∃ x, B x :=
  let ⟨x, a⟩ := h2 in ⟨x, h1 x a⟩
end

section
variable U : Type
variables A B C : U → Prop
example (h1 : ∃ x, A x ∧ B x) (h2 : ∀ x, B x → C x) : ∃ x, A x ∧ C x :=
  let ⟨x, a, b⟩ := h1 in ⟨x, a, h2 x b⟩
end

section
variable U : Type
variables A B C : U → Prop
example : (¬ ∃ x, A x) → ∀ x, ¬ A x :=
  λ f x a, f ⟨x, a⟩
example : (∀ x, ¬ A x) → ¬ ∃ x, A x :=
  λ f ⟨x, a⟩, f x a
end

section
variable U : Type
variables R : U → U → Prop
example : (∃ x, ∀ y, R x y) → ∀ y, ∃ x, R x y :=
  λ ⟨x, f⟩ y, ⟨x, f y⟩
end

section
theorem foo {A : Type} {a b c : A} : a = b → c = b → a = c :=
  λ h₁ h₂, eq.symm h₂ ▸ h₁

section
variable {A : Type}
variables {a b c : A}
-- replace the sorry with a proof, using foo and rfl, without using eq.symm.
theorem my_symm (h : b = a) : a = b := foo rfl h
-- now use foo, rfl, and my_symm to prove transitivity
theorem my_trans (h1 : a = b) (h2 : b = c) : a = c := foo h1 (my_symm h2)
end
end

-- § 10.6
section
variables {T : Type} (R : T → T → Prop)
def has_min := ∃x, ∀y, R x y
def has_max := ∃y, ∀x, R x y
def has_between := ∀ x y, R x y ∧ x ≠ y → ∃ z, R x z ∧ R z y ∧ x ≠ z ∧ y ≠ z

#print nat.less_than_or_equal

lemma not_succ_le {x : ℕ} : ¬(nat.succ x ≤ x) :=
  λ le, begin
  induction x,
  { cases le },
  { exact x_ih (nat.pred_le_pred le) }
end

#check nat.less_than_or_equal.rec_on

universe u

def double : ℕ → ℕ := nat.rec 0 (λ (n m : ℕ), nat.succ (nat.succ m))

#reduce double 7


lemma nat_le_rec_on
  {a b : ℕ} {T : Type} {P : ℕ → Prop} (le : a ≤ b) (x : T) :
  (T → P a) → (T → ∀ ⦃b : ℕ⦄, nat.less_than_or_equal a b → P b → P (nat.succ b)) → P b :=
  λ h₁ h₂, nat.less_than_or_equal.rec_on le (h₁ x) (h₂ x)


lemma not_succ_le' {x : ℕ} : ¬(nat.succ x ≤ x) :=
  λ le, nat_le_rec_on le x (λ x, _) (λ b le' x, _)

example : has_min nat.le := ⟨0, λ x, x.rec_on (nat.less_than_or_equal.refl _) (λ n h, nat.less_than_or_equal.step h)⟩
example : ¬has_max nat.le := λ ⟨y, f⟩,  not_succ_le (f (nat.succ y))
end
