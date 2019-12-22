import set_theory.schroeder_bernstein

-- Schroeder-Bernstein Theorem

universes u v

open function

theorem t025 {α : Type u} {β : Type v} {f : α → β} {g : β → α} :
  Π (hf : injective f) (hg : injective g), ∃h:α→β, bijective h
:= embedding.schroeder_bernstein
