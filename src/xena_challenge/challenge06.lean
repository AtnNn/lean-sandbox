import data.set.basic
import lib.attempt

open set

def equivalence_class {X : Type} (R : X → X → Prop) (x : X) := {y : X | R x y}

theorem challenge06 (X : Type) (R : X → X → Prop) (hR : equivalence R) (x : X) : equivalence_class R x ≠ ∅ :=
attempt begin
  intro h,
  replace h := congr_fun h x,
  have r := hR.1 x,
  replace h : R x x = false := h,
  rw h at r,
  exact r
end $
attempt (λ h, (congr_fun h x).mp $ hR.1 x) $
attempt begin
  apply nonempty.ne_empty,
  use x,
  exact hR.1 x
end $
nonempty.ne_empty ⟨x, hR.1 x⟩
