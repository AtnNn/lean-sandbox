import tactic.tidy

universes u v

namespace knopp

inductive natural.type | one : natural.type | succ : natural.type → natural.type

def natural := natural.type

namespace natural

instance has_one : has_one natural := ⟨natural.type.one⟩

def add : natural → natural → natural
| n type.one := type.succ n
| n (type.succ m) := type.succ (add n m)

instance has_add : has_add natural := ⟨add⟩

@[irreducible, elab_as_eliminator]
def cases_on {p : natural → Sort u} (n : natural) : p 1 → (∀ m, p (m + 1)) → p n := type.cases_on n

@[irreducible, elab_as_eliminator]
def rec {p : natural → Sort u} : p 1 → (∀ x, p x → p (x + 1)) → Π a, p a := type.rec

attribute [irreducible] natural

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

