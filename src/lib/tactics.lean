import tactic.ring
import tactic.finish
import tactic.interactive
import tactic.find
import tactic.tidy
import tactic.well_founded_tactics
import lib.tactic.dmatch

open lean
open lean.parser

namespace tactic
namespace interactive
open interactive interactive.types expr

-- `let_eq h : x = v` is like `generalize h : v = x`, but without substitution
meta def let_eq (h : parse ident) (x : parse (tk ":" >> ident)) (v : parse (tk "=" *> texpr))
: tactic unit := do
  «have» (some h) (some ``(∃ x, x = %%v)) (some ``(Exists.intro %%v rfl)),
  hl ← get_local h,
  «destruct» ``(%%hl),
  «clear» [h],
  «intros» [x, h]

meta def cases_on : parse lean.parser.ident → tactic unit
| id := do
  «revert» [id],
  «intro» id,
  co <- resolve_name (id <.> "cases_on"),
  `[apply %%co; intros]

end interactive

open well_founded_tactics

meta def dec_tac_by (try : tactic unit) : tactic unit :=
  tactic.abstract (do
    clear_internals,
    unfold_wf_rel,
    process_lex (do
      unfold_sizeof,
      done <|> (cancel_nat_add_lt >> trivial_nat_lt) <|> try))

end tactic

namespace lib

meta def wf_tacs : well_founded_tactics := {dec_tac := tactic.dec_tac_by `[tidy]}
meta def wf_by (try : tactic unit) : well_founded_tactics := {dec_tac := tactic.dec_tac_by try}

end lib

example (a b : ℕ) : ∃ d, d = a - b := begin
  let_eq h : d = a - b,
  existsi d,
  exact h
end
