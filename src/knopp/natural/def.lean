import tactic.tidy

universes u v

namespace knopp

inductive natural | one : natural | succ : natural → natural

namespace natural

instance has_one : has_one natural := ⟨one⟩

def add : natural → natural → natural
| n 1 := succ n
| n (succ m) := succ (add n m)

instance has_add : has_add natural := ⟨add⟩

def induction {p : natural → Sort u} {a : natural} : p 1 → (∀ x, p x → p (x + 1)) → p a := natural.rec_on a

def mul : natural → natural → natural
| n 1 := n
| n (m + 1) := n + mul n m

instance has_mul : has_mul natural := ⟨mul⟩

def lt (a b : natural) : Prop := ∃ x, a + x = b

instance has_lt : has_lt natural := ⟨lt⟩

meta def autoparam : tactic unit := tactic.tidy

def pred.total : natural → natural
| 1 := 1
| (x + 1) := x

def pred (a : natural) (h : 1 < a . autoparam) : natural := pred.total a

def sub.total : Π (a b : natural), natural
| a 1 := pred.total a
| a (b + 1) :=
sub.total (pred.total a) b

def sub (a b : natural) (h : b < a . autoparam) : natural := sub.total a b

def le (a b : natural) := a = b ∨ a < b

instance has_le : has_le natural := ⟨le⟩

def dvd (a b : natural) : Prop := ∃ c, a = b * c

instance has_dvd : has_dvd natural := ⟨dvd⟩

end natural
end knopp

