import knopp.natural
import knopp.ordered_aggregate

namespace knopp

inductive sign | positive | negative

namespace rational

-- numbers integral and fractional, positive and negative, including zero
inductive number
| fraction : sign → natural → natural → number
| zero : number

namespace number

inductive eq : number → number → Prop
| zero : eq zero zero
| fraction {m n o p : natural} {s : sign}: m * p = o * n → eq (fraction s m n) (fraction s o p)

end number

instance setoid : setoid number := {
r := number.eq,
iseqv := begin
  split,
  { intro x,
    cases x with s m n,
    constructor,
    refl,
    constructor },
  split,
  { intros x y h,
    cases h with m n o p s hh,
    { constructor },
    { constructor,
      rw natural.mul_comm,
      rw hh,
      rw natural.mul_comm } },
  { intros x y z hxy hyz,
    cases hxy with m n o p s h,
    { cases hyz, constructor },
    { cases hyz with _ _ q r _ hh,
      constructor,
      replace h : m * p * r * q = o * n * r * q,
      { congr, assumption },
      -- rw [@natural.mul_comm o, @natural.mul_assoc n, hh] at h,
      rw (by calc
        m * p * r * q = m * (p * r) * q : by simp [natural.mul_assoc]
        ... = m * (r * p) * q : by simp [natural.mul_comm]
        ... = m * r * p * q : by simp [natural.mul_assoc]
      ) at h,
      rw (by calc
        o * n * r = n * (o * r) : by simp [natural.mul_comm, natural.mul_assoc]
        ... = n * (q * p) : by rw hh
        ... = q * n * p : by { rw ← natural.mul_assoc, simp [natural.mul_comm] }
      ) at h,
      repeat { rw @natural.mul_assoc _ p at h },
      exact natural.mul_inj h
      } }
end
}

end rational

def rational := quotient rational.setoid

namespace rational

namespace number

inductive lt : number → number → Prop
| neg_zero {m n : natural} : lt (fraction sign.negative m n) zero
| zero_pos {m n : natural} : lt zero (fraction sign.positive m n)
| neg_pos {m n o p : natural} : lt (fraction sign.negative m n) (fraction sign.positive o p)
| neg_neg {m n o p : natural} : m * p > o * n → lt (fraction sign.negative m n) (fraction sign.negative o p)
| pos_pos {m n o p : natural} : m * p < o * n → lt (fraction sign.positive m n) (fraction sign.positive o p)

def canonical : number → number
| zero := zero
| (fraction s a b) := fraction s (natural.div a (natural.gcd a b)) (natural.div b (natural.gcd a b))

end number

-- 1. Rational numbers form an ordered aggregate

instance ordered_aggregate : ordered_aggregate rational := {
lt := lt,
eq := eq,
exclusive := begin
  intros a b,
  repeat { constructor; intro } ; repeat {constructor, intro},
  { cases ‹eq a b› with m n o p s heq,
    { cases ‹lt zero zero› },
    { cases ‹lt _ _›,
       } }
end
}

end rational

end knopp
