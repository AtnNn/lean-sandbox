import analysis.complex.polynomial

open polynomial
open complex

theorem t002 {f : polynomial ℂ} : (0 < degree f) → ∃ z : ℂ, is_root f z :=
exists_root

#check t002


