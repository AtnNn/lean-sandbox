import advent_of_code_2019.common
import tactic.norm_num
import tactic.suggest
import tactic.linarith

namespace day1

def fuel_required (mass : ℤ) : ℤ := (mass / 3) - 2

example : fuel_required 12 = 2 := by refl
example : fuel_required 14 = 2 := by refl
--example : fuel_required 1969 = 654 := by norm_num
--example : fuel_required 100756 = 335830 := by norm_num

def part_one : list ℤ → ℤ := list.sum ∘ list.map fuel_required

-- set_option trace.class_instances true

def nat_of_int (a : ℤ) : ℕ := begin
  cases a, exact a, exact 0
end

lemma nat_of_int_of_nat {x} : nat_of_int (int.of_nat x) = x := by refl

-- lemma le_nat_of_int : a < 0 → 

lemma coe_nat_of_int {x : ℤ} (h : x ≥ 0) : ↑(nat_of_int x) = x :=
begin
  cases x,
  rw nat_of_int_of_nat,
  refl,
  cases h,
end

lemma additional_fuel_wf (m : ℤ) (h : 0 < m) :
nat_of_int (fuel_required m + 2) < nat_of_int (m + 2)
:= begin
  dunfold fuel_required,
  apply int.lt_of_coe_nat_lt_coe_nat,
  rw coe_nat_of_int, rw coe_nat_of_int,
  calc m / 3 - 2 + 2 = m / 3 : by simp
  ... ≤ m : by { apply int.div_le_self, apply int.le_of_lt, assumption }
  ... < m + 2 : by simp,
  linarith,
  have rr : m / 3 - 2 + 2 = m / 3 := by simp, rw rr,
  norm_num,
  apply int.div_nonneg,
  exact le_of_lt h,
  norm_num,
end

@[reducible]
def additional_fuel : ℤ → ℤ
| m := if h : 0 < m then have _ := additional_fuel_wf, m + additional_fuel (fuel_required m) else 0
using_well_founded {
  dec_tac := `[apply this, assumption],
  rel_tac := λ _ _, `[exact ⟨_, measure_wf (nat_of_int ∘ (+2))⟩] }

example : additional_fuel 14 = 16 := begin
  unfold1 additional_fuel,
  rw if_pos,
  unfold1 fuel_required additional_fuel,
  rw if_pos,
  unfold1 fuel_required additional_fuel,
  rw if_neg,
  repeat {norm_num},
end
#eval additional_fuel 1969

def part_two : list ℤ → ℤ := list.sum ∘ list.map (additional_fuel ∘ fuel_required)

end day1

def main : io unit :=
batch (both day1.part_one day1.part_two ∘ lines.list)
