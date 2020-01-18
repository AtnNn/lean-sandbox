import tactic.interactive
import category.traversable

universes u

--open lean
--open lean.parser

--example (list : ℕ) := list.map

@[irreducible]
def freeze {α : Sort u} (x : α) : α := x

def dup {α : Sort u} (x : α) : Σ' (y : α), x = y := ⟨x, rfl⟩

def ex (x : ℕ) : 0 = x ∨ ∃ y, y + 1 = x :=
let ⟨y, h⟩ := dup x,
hy : 0 = y ∨ ∃ x, x + 1 = y := match x, h with
| 0, h := or.inl h
| (x + 1), h := or.inr ⟨x, h⟩
end
in begin
 rw ← h at hy,
 exact hy
end

#print ex
#print ex._match_2

namespace tactic
namespace interactive

setup_tactic_parser

def metavar {α} {x : α} : α := x

-- def f := begin
--   have y : ℕ := 4,
--   have x : ℕ := metavar,
--   by_cases h : y = x + 1,
--   repeat { sorry }
-- end

@[derive has_reflect]
meta structure equation := (witness : option name) (pattern : pexpr) (body : pexpr)

meta def equation.parser : lean.parser equation := do
  tk "|",
  witness <- optional $ tk "{" *> ident <* tk "}",
  pattern <- parser.pexpr,
  tk ":=",
  body <- texpr,
  return { witness := witness, pattern := pattern, body := body }

namespace dmatch_
meta def mk_case : equation → tactic (name × pexpr × pexpr)
| ⟨none, pattern, body⟩ := (λ h, (h, pattern, body)) <$> get_unused_name `h
| ⟨some h, pattern, body⟩ := return (h, pattern, body)

meta def lam (x : name) (t : pexpr) (e : pexpr) : pexpr := expr.lam x binder_info.default t e

meta def cons (x : pexpr) : name × pexpr × pexpr → pexpr → pexpr
| ⟨h, pattern, body⟩ rest
:= let case := ``(%%x = %%pattern) in ``(dite %%case %%(lam h case body) %%(lam h ``(¬%%case) rest))

@[irreducible]
def opaque {α} (x : α) : α := x

def opaque.refl {α} (x : α) : x = opaque x := by { delta opaque, refl }

def hm (x : ℕ) := let y := opaque x in match x, opaque.refl x with a + 1, b := by {  } | _, _ := 1 end

meta def impossible : list (name × pexpr × pexpr) → tactic pexpr
| [⟨h₀, p₀, _⟩] := return ``(match )
| _ := fail "too many patterns not implemented"

meta def mk (x : pexpr) (patterns : list equation) : tactic pexpr := do
  cases <- sequence $ patterns.map mk_case,
  imp <- impossible cases,
  return $ cases.foldr (cons x) imp
end dmatch_

meta def dmatch (x : parse (parser.pexpr <* tk "with")) (patterns : parse (many equation.parser)) : tactic unit :=
  dmatch_.mk x patterns >>= «exact»

def hmmm (x : ℕ) (h : x = 1): x = 1 := by { cases x, cases h, assumption }

#print hmmm

end interactive
end tactic

def foo (y : ℕ) : Π x : ℕ, x = y → ℕ
| 0 _ := 1
| 3 _ := 4
| (x + 2) _ := x
| 1 _ := 5

#print foo._main

def fib (n : ℕ) (f : fin n → ℕ) : ℕ :=
by dmatch n with
| 0 := 1
| 1 := 1
| {h} (m + 2) := f ⟨m, _⟩ + f ⟨m + 1, _⟩

