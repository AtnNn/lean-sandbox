import set_theory.cardinal

-- Cantor’s Theorem

universe u

open cardinal

theorem t063 : ∀(a : cardinal.{u}), a < 2 ^ a
:= cantor
