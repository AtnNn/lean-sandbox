import tactic.ring
import tactic.finish
import tactic.interactive
import tactic.find

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

end interactive
end tactic

example (a b : ℕ) : ∃ d, d = a - b := begin
  let_eq h : d = a - b,
  existsi d,
  exact h
end
