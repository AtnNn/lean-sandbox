# L∃∀N Sandbox

- [logic_and_proof](src/logic_and_proof/): working through exercises in https://leanprover.github.io/logic_and_proof/
- [projecteuler](src/projecteuler/): working through problems from https://projecteuler.net/
- [advent_of_code_2019](src/advent_of_code_2019/): https://adventofcode.com/2019
- [xena_challenge](src/xena_challenge/): https://github.com/kbuzzard/xena/blob/master/Maths_Challenges/challenges.md
- [docs](src/docs/): collection of papers and presentations about lean

## Links

- https://leanprover.zulipchat.com
- https://github.com/leanprover/lean
- https://leanprover.github.io/
- https://xenaproject.wordpress.com/
- https://github.com/leanprover/mathlib

## L∃∀N Quick Reference

- Commands
  - `#check <expr>` -- Type of expr
  - `#print <expr>` -- Value of expr
  - `#exit`
  - `#reduce <expr>` -- Eval expr using slow and safe reduction
  - `#eval` -- Using fast corner-cutting
  - mathlib
    - `#find`
    - `#explode`
- Top-level
  - `section`
  - `import`
  - `def`
  - `protected def`?
  - `instance`
  - `class`
  - `variables`
  - `universes`
  - `inductive`
  - `structure`
  - `record`
  - `abbreviation`
  - `axiom`
  - `constant`
  - `prelude`?
  - `notation ... := expr`
    - `expr`
    - `` `op`:prec ``
  - ``reserve fixity `op`:prec``
  - ``prefix `op` := expr``
  - `infix`
  - `infixr`
  - `attribute [attr] expr*`
- Comments
  - `--`
  - `/-` `-/`
- Options
  - `pp.implicit`
  - `pp.universes`
  - `pp.coercions`
  - `pp.notation`
  - `pp.beta`
  - `pp.all`
  - `pp.full_names`
  - `pp.unicode`
  - `pp.numerals`
  - `trace.eqn_compiler.elim_match`
  - `trace.class_instances`
  - `trace.simplfy`
  - `trace.simplify.rewrite`
  - `max_memory`
- Attributes
  - Used by tactics
    - `[class]`
    - `[instance]`
    - `[priority n]`: class resolution priority
    - `[refl]`: `reflexivity`, `calc`, `simp`
    - `[symm]`: `symmetry`
    - `[trans]`: `transitivity`, `calc`, `simp`
    - `[congr]`: `simp`
    - `[simp]`: `simp`
    - `[recursor]`: `induction`
  - Unfolding
    - `[reducible]`
    - `[semireducible]`
    - `[irreducible]`
  - Elaboration
    - `[elab_with_expected_type]`
    - `[elab_simple]`
    - `[elab_as_eliminator]`
  - Other
    - `[unify]`: ?
    - `[inline]`: ?
    - `[pattern]`: ?
    - `[subst]`: ?
- Tactics
  - Basic
    - `intro id?`
    - `intros id*`
    - `introv id*`
    - `rename id id`
    - `apply expr`
    - `fapply expr`
    - `eapply expr`
    - `apply_with expr (tactic.apply_cfg)`
    - `apply_instance`
    - `refine expr`
    - `change expr (with expr)? (at (* | (⊢ | id)*))?`
    - `exact expr`
    - `exacts ([expr, ...] | expr)`
    - `revert id*`
    - `generalize id? : expr = id`
    - `admit`
    - `contradiction`
    - `trivial`
    - `exfalso`
    - `clear id*`
    - `specialize expr`
    - `by_cases expr (with id)?`
    - `by_contradiction id?`
  - Equality and Other Relations
    - `refl`
    - `symmetry`
    - `transitivity ?expr`
  - Structured Proofs
    - `assume (: expr | <binders>)`
    - `have id? (: expr)? (:= expr)?`
    - `let id? (: expr)? (:= expr)?`
    - `suffices id? (: expr)?`
    - `show expr`
    - `from expr`
  - Inductive Types
    - `induction expr (using id)? (with id*)? (generalizing id*)?`
    - `cases (id :)? expr (with id*)?`
    - `case id id* { tactic }`
    - `destruct expr`
    - `existsi`
    - `constructor`
    - `econstructor`
    - `left`
    - `right`
    - `split`
    - `injection expr (with id*)?`
    - `injections (with id*)?`
  - Combinators
    - `repeat { tactic }`
    - `try { tactic }`
    - `skip`
    - `solve1 { tactic }`
    - `abstract id? { tactic }`
    - `all_goals { tactic }`
    - `any_goals { tactic }`
    - `done`
    - `fail_if_success { tactic }`
    - `success_if_fail { tactic }`
    - `guard_target expr`
    - `guard_hyp id := expr`
  - Rewriter
    - `rw ([ (←? expr), ... ] | ←? expr) (at (* | (⊢ | id)*))? tactic.rewrite_cfg?`
    - `rwa`
    - `erw`
    - `subst expr`
  - Simplifier and Congruence Closure
    - `simp only? (* | [(* | (- id | expr)), ...]?) (with id*)? (at (* | (⊢ | id)*))? tactic.simp_config_ext?`
    - `dsimp only? (* | [(* | (- id | expr)), ...]?) (with id*)? (at (* | (⊢ | id)*))? tactic.dsimp_config?`
    - `simp_intros id* only? (* | [(* | (- id | expr)), ...]?) (with id*)? tactic.simp_intros_config?`
    - `unfold id* (at (* | (⊢ | id)*))? tactic.unfold_config?`
    - `unfold1 id* (at (* | (⊢ | id)*))? tactic.unfold_config?`
    - `dunfold id* (at (* | (⊢ | id)*))? tactic.dunfold_config?`
    - `delta id* (at (* | (⊢ | id)*))?`
    - `unfold_projs`
    - `trace_simp_set`
    - `ac_refl`
    - `cc`
  - Other
    - `trace_state`
    - `trace a`
    - `type_check expr`
    - `apply_opt_param`
    - `apply_auto_param`
    - `dedup`
  - Mathlib
    - `rcases`
    - `rintros`
    - `simpa`
    - `replace`
    - `finish`
    - `clarify`
    - `safe`
    - `ring`
    - `congr'`
    - `unfold_coes`
    - `resetI`
    - `unfreezeI`
    - `introI`
    - `introsI`
    - `haveI`
    - `letI`
    - `solve_by_elim` (with an argument like ``{ discharger := `[cc] }``)
    - `ext1`
    - `ext`
    - `refine_struct`
    - `apply_rules [id*] n?`
    - `h_generalize`
    - `pi_instance`
    - `assoc_rewrite`
    - `restate_axiom`
    - `def_replacer id`
    - `tidy`
    - `chain`
  - Other
    - `conv`?
    - `tauto`?
    - `rintro`?
    - `dec_trivial`?
    - `obviously`?
    - `rewrite_search`?
    - `sanity_check`?
    - `slim_check`?
    - `nunchaku`?
    - `solve_by_elim`?
