import data.set.basic
import tactic.tidy
import lib.attempt

variables (R A : Type)
variables (𝕍 : set R → set A) (𝕀 : set A → set R)

open set

-- 𝕍 𝕀 𝕍 = 𝕍 for a contravariant Galois connection
-- for example the one between R=k[X₁,X₂,…,Xₙ] and A=𝔸ⁿ
-- in the theory of algebraic varieties

example
  (𝕍_antimono : ∀ J₁ J₂ : set R, J₁ ⊆ J₂ → 𝕍 J₂ ⊆ 𝕍 J₁)
  (𝕀_antimono : ∀ W₁ W₂ : set A, W₁ ⊆ W₂ → 𝕀 W₂ ⊆ 𝕀 W₁)
  (galoi : ∀ J : set R, ∀ W : set A, J ⊆ 𝕀 W ↔ W ⊆ 𝕍 J) :
  ∀ J : set R, 𝕍 (𝕀 (𝕍 J)) = 𝕍 J :=
attempt begin
  simp only [subset_def, mem_def] at *,
  delta set at *,
  intro J,
  apply funext,
  intro a,
  apply propext,
  split,
  { intro h₁,
    apply 𝕍_antimono,
    intros r h₂,
    sorry },
  { sorry }
end $
attempt begin
  have galoi₁ := λ J W, (galoi J W).1,
  have galoi₂ := λ J W, (galoi J W).2,
  intro J,
  apply subset.antisymm,
  { apply 𝕍_antimono,
    apply galoi₂,
    apply subset.refl },
  { apply galoi₁,
    apply subset.refl }
end $
attempt begin
  have galoi₁ := λ J W, (galoi J W).1,
  have galoi₂ := λ J W, (galoi J W).2,
  intro J,
  apply subset.antisymm,
  solve_by_elim [subset.refl],
  solve_by_elim [subset.refl],
end $
begin
  intro J,
  apply subset.antisymm,
  { apply 𝕍_antimono,
    rw galoi },
  { rw ←galoi }
end
