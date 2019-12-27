import knopp.common

namespace knopp

class ordered_aggregate (system : Type) :=
(lt : system → system → Prop) (eq : system → system → Prop)

-- between any two, say a and b, one and only one of the three relations necessarily holds
(exclusive : ∀ a b, one_and_only_one [lt a b, eq a b, lt b a])

-- Fundamental laws of order

-- Invariably a = a
(refl : ∀ a, eq a a)

-- a = b always implies b = a
(comm_eq : ∀ a b, eq a b → eq b a)

-- a = b, b = c implies a = c
(trans_eq : ∀ a b c, eq a b → eq b c → eq a c)

-- a ≤ b, b < c, — or a < b, b ≤ c, — implies a < c
(trans_le_lt : ∀ a b c, ¬(lt b a) → lt b c → lt a c)
(trans_lt_le : ∀ a b c, lt a b → ¬(lt c b) → lt a c)

end knopp
