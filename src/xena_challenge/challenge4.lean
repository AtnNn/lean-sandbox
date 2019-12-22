import tactic
import lib.attempt

open function

theorem challenge4 (X Y Z : Type) (f : X → Y) (g : Y → Z) : surjective (g ∘ f) → surjective g :=
attempt begin
  unfold surjective,
  intros h b,
  cases h b with a hh,
  use f a,
  exact hh,
end $
λ h b, let ⟨ a, h ⟩ := h b in ⟨ f a, h ⟩

