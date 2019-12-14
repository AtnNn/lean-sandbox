import data.real.basic
import lib.attempt

namespace challenges

-- basic definitions
def upper_bounds (S : set ℝ) : set ℝ := { b | ∀s ∈ S, s ≤ b }
def lower_bounds (S : set ℝ) : set ℝ := { b | ∀s ∈ S, b ≤ s }
def is_least (S : set ℝ) (l : ℝ) : Prop := l ∈ S ∧ l ∈ lower_bounds S
def is_lub (S : set ℝ) (l : ℝ) : Prop := is_least (upper_bounds S) l

/-- A set has at most one least upper bound -/
theorem challenge2 (S : set ℝ) (a b : ℝ) (ha : is_lub S a) (hb : is_lub S b) : a = b :=
attempt begin
  unfold is_lub is_least upper_bounds lower_bounds at *,
  cases ha with ha1 ha2,
  cases hb with hb1 hb2,
  unfold set_of has_mem.mem set.mem at *,
  have hab := ha2 b hb1,
  have hba := hb2 a ha1,
  -- suggest,
  exact le_antisymm (ha2 b hb1) (hb2 a ha1),
end $
begin
  exact le_antisymm (ha.2 b hb.1) (hb.2 a ha.1),
end

end challenges
