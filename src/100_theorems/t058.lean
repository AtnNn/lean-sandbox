import data.finset

-- Formula for the Number of Combinations

open finset

theorem t058 {α} : Π (n : ℕ) (s : finset α),
  card (powerset_len n s) = nat.choose (card s) n
:= finset.card_powerset_len
