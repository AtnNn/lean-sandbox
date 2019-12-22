import group_theory.order_of_element

-- Order of a Subgroup

theorem t071 {α : Type*} [group α] [fintype α] [decidable_eq α] (s : set α) [is_subgroup s] [fintype s] :
  fintype.card s ∣ fintype.card α
:= card_subgroup_dvd_card s
