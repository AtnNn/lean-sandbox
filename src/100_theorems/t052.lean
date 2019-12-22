import data.finset

-- The Number of Subsets of a Set

open finset

theorem t052 {α} : Π (s : finset α), card (powerset s) = 2 ^ card s
:= finset.card_powerset
