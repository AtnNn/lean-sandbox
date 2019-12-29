import tactic.interactive

example : ¬ ∀ (α : Type) (r : Prop), r → (∃ x : α, r) :=
begin
  intro h,
  cases h empty _ true.intro with w,
  cases w
end

example (α : Type) [inhabited α] (r : Prop) : r → (∃ x : α, r) :=
λ h, ⟨inhabited.default α, h⟩

#print foo
