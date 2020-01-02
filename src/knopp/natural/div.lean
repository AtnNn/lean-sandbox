import knopp.natural.lemmas

namespace knopp namespace natural

lemma div_wf {a b : natural} (h : b + 1 < a) : natural.sizeof (sub a (b + 1) h) < natural.sizeof a := begin
  apply lt_sizeof_of_lt,
  exact sub_lt_self
end

def div.impl : Π (a b : natural), (a ∣ b) → natural
| a 1 _ := a
| a (b + 1) hd := if h : b + 1 < a then
have hh : _ := div_wf h,
div.impl (sub a (b + 1) h) (b + 1) (sub_dvd_of_dvd hd) else 1

def div (a b : natural) (h : a ∣ b . autoparam) := div.impl a b h



end natural end knopp
