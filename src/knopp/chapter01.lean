import knopp.common

-- ordered sequence of natural numbers 1, 2, 3, ...
import knopp.natural

-- 1. The system of rational numbers and its gaps
import knopp.rational

/-
2. Any two rational numbers may be combined in four distinct
ways, referred to respectively as the four processes (or basic operations)
of Addition, Subtraction, Multiplication, and Division. These operations
can always be carried out to one definite result, with the single exception
of division by 0, which is undefined and should be regarded as an entirely
impossible or meaningless process; the four processes also obey a number
of simple laws, the so-called Fundamental Laws of Arithmetic, and further
rules cleducible therefrom.

These too we shall regard as known, and state, concisely, those
Fundamental Laws or Axioms of Arithmetic from which all the others may
be inferred, by purely formal rules (i. e. by the laws of pure logic).

I. Addition. 1. Every pair of numbers a and b has invariably associ-
ated with it a third, c, called their sum and denoted by a + b.

2. a = a', b b' always implv a \ b -- a' + b'.

3. Invariably, a + b b + (Commutative Law).

4. Invariably, (a + b) + c = a + (b + c) (Associative Law).

5. a < b always implies a + c < b + c (Law of Monotony).

II. Subtraction.

To every pair of numbers a and b there corresponds a third number
c, such that a + c b.



8 a > b and b < a are merely two different expressions of the same relation.
Strictly speaking, the one symbol "<" would therefore suffice.

3 With regard to this seemingly trivial "law" cf. footnote 11, p. 9, remark 1 , p. 28,
and footnote 24, p. 29.

4 To express that one of the relations of order: a < b, a 6, or a > b, does
not hold, we write, respectively, a^b ("greater than or equal to", "at least equal
to", "not less than"), a -t= b ("unequal to", "different from") or a *- 6. Kach of
these statements (negations) definitely excludes one of the three relations and leaves
undecided which of the other two holds good.



6 Chapter I. Principles of the theory of real numbers.

III. Multiplication.

1. To every pair of numbers a and b there corresponds a third
number c, called their product and denoted by a b.

2. a a', b b' always implies a b = a' b'.

3. In all cases ab = ba (Commutative Law).

4. In all cases (ab) c =-- a (b c) (Associative Law).

5. In all cases (a + b) c a c + b c (Distributive Law).

6. a < b implies, provided c is positive, a c <.b c (Law of Mono-
tony).

IV. Division.

To every pair of numbers a and b of which the first is not there
corresponds a third number c, such that a c = b.

As already remarked, all the known rules of arithmetic, and
hence ultimately all mathematical results, are deduced from these
few laws, with the help of the laws of pure logic alone. Among these
laws, one is distinguished by its primarily mathematical character, namely
the

V. Law of Induction, which may be reckoned among the fundamental
laws of arithmetic and is normally stated as follows:

If a set S 3)t of natural numbers includes the number 1, and if, every
time a certain natural number n and all those less than n can be taken to
belong to the aggregate, the number (n h 1) rniy be inferred also to belong
to it, then $)J includes all the natural numbers.

This law of induction itself follows quite easily from the following
theorem, which appears even more obvious and is therefore normally
called the fundamental law of the natural numbers :

Law of the Natural Numbers. In every set of natural numbers that
is not "empty" there is always a number less than all the rest.

For if, according to the hypotheses of the Induction Law, we con-
sider the set 9i of natural numbers not belonging to $)?, this set W must
be "empty", that is, $ft must contain all the natural numbers. For other-
wise, by the law of the natural numbers, 1U would include a number less
than all the rest. This least number would exceed 1, for it was assumed
that 1 belongs to s l)i; hence it could be denoted by n + 1. Then n would
belong to 3)i, but (n + 1) would not, which contradicts the hypotheses
in the law of induction. 5

In applications it is usually an advantage to be able to make state-
ments not merely about the natural numbers but about any whole numbers.



6 The following rather more general form of the law of induction can be
deduced in exactly the same way from the fundamental law of the natural numbers.
If set >j.)j of natural numbers includes the number 1, and if the number (n -|- 1)
can be proved to belong to the aggregate provided the number n does, then Wl con-
tains all the natural numbers.



1. The system of rational numbers and its gaps. 7

The laws then take the following forms, obviously equivalent to those
above :

Law of Induction. If a statement involves a natural number n (e. g.
"if n ^ 10, then 2 W > n*", or the like) and if

a) this statement is correct for n = p t
and

b) its correctness for n = p, p -{- I, . . . , k (where k is any natural
number >; p) always implies its correctness for n = k -f- 1, then the
statement is correct for every natural number ^ p.

Law of Integers. In every set of integers all r p that is not "empty",
there is always a number less than all the rest. 6

We will lastly mention a theorem susceptible, in the domain of
rational numbers, of immediate proof, although it becomes axiomatic
in character very soon after this domain is left; namely the

VI. Theorem of Eudoxus.

If a and b are any two positive rational numbers, then a natural
number n always exists 7 such that n b > a.

The four ways of combining two rational numbers give in every
case as the result another rational number. In this sense the system
of rational numbers forms a closed aggregate (naturlicher Rationalitats-
bereich or number corpus). This property of forming a closed system \\ith
respect to the four rules is obviously not possessed by the aggregate of
all natural numbers, or of all positive and negative integers. These are,
so to speak, too sparsely sown to meet all the demands which the four
rules make upon them.

This closed aggregate of all rational numbers and the laws which hold
in it, are then all that we regard as given, known, secured.

As that type of argument which makes use of inequalities and absolute values 3.
may be a little unfamiliar to some, its most important rules may be set down here,
briefly and without proof:

I. Inequalities. Here all follows from the laws of order and monotony.
In particular

1. The statements in the laws of monotony are reversible; e. g. a -f- c
< b -|- c always implies a < 6; and so does a c < b c , provided c > 0.

2. a < b, c < d always implies a -f c < b -f d.

3. a < b, c < d implies, provided b and c are positive, a c < b d.

4. a < b a! ways implies b < a,

. . . 11

and also, provided a is positive, , < -.

b a



To reduce these forms of the laws to the previous ones, we need only con-
sider the natural numbers m such that, in the one case, the statement in question
is correct for n (p 1) -f m, or, in the other, that (p 1) -f m belongs to the
non-" empty" set under consideration.

7 This theorem is usually, but incorrectly, ascribed to Archimedes ; it is already
to be found in Euclid, Elements, Book V, Def. 4.



8 Chapter I. Principles of the theory of real numbers.

Also these theorems, as well as the laws of order and monotony, hold (with
appropriate modifications) when the signs "S", "-*", "__-" and <c ^= l> are sub-
stituted for "<", provided we maintain the assumptions that c> b and a are posi-
tive, in 1, 3, and 4 respectively.

II. Absolute values. Definition: By \ a |, the absolute value (or modulus)
of a, is meant that one of the two numbers -\-a and a which is positive, sup-
posing a 3= 0; and the number 0, if a 0. (Hence | | -^ and if a = 0, | a \ > 0.)

The following theorems hold, amongst others:



3.



a\ --- \ - a\. 2. | ab \ =-

1



a



a



, provided a =f= 0.



J 4. \ a + b [ :_j, \ a\ + \ b \; |a + 6|^|a|- |6|, and indeed | a + b \

^ \a\ -|6|(.

5. The two relations | a \ < r and r < a < r are exactly equivalent;
similarly for | x a \ < r and a r <. x < a -\- r.

0. | a b | is the distance between the points a and b, with the represen-
tation of numbers on a straight line described immediately below.

Proof of the first relation in 4: a ^ \ a |, b < | b |, so that by 3, I, 2,
(a -\ b) ^ | a | -f- | 6 |, and hence | a -\ b \ ^ | a \ -}- | b |.

We also assume it to be known how the relations of magnitude
between rational numbers may be illustrated graphically by relations
of positions between points on a straight line. On a straight line or
number-axis, any two distinct points arc marked, one O, the origin (0)
and one U 9 the unit point (1). The point P which is to represent a number

a = *- (q > 0, p ^ 0, both integers) is obtained by marking off on the

axis, | p | times in succession, beginning at O, the <? th part of the dis-
tance O U (immediately constructed by elementary geometry) either in
the direction O U, if p > 0, or if p is negative, in the opposite direction.
This point 8 we call for brevity the point a, and the totality of points
corresponding in this way to all rational numbers we shall refer
to as the rational points of the axis. The straight line is usually
thought of as drawn from left to right and U chosen to the right of O.
In this case, the words positive and negative obviously become equiva-
lents of the phrases: to the right of O and to the left of O, respectively;
and, more generally, a < b signifies that a lies to the left of b, b to the
right of a. This mode of expression may often assist us in illustrating
abstract relations between numbers.



8 The position of this point is independent of the particular representation
of the number a t i. e. if a p'/q' is another representation with </' *> and p' ^
both integers, and if the construction is performed with q', p' in place of q t p, the
same point P is obtained.



1. The system of rational numbers and its gaps. 9

This completes the sketch of what we propose to take as the
previously secured foundation of our subject. We shall now regard
the description of these foundations as characterizing the concept of
number; in other words, we shall call any system of conceptually well-
distinguished objects (elements, symbols) a number system, and its
elements numbers, if to put it quite briefly for the moment we
can operate with them in essentially the same ways as we do with rational
numbers.

We proceed to give this somewhat inaccurate statement a precise
formulation.

We consider a system S of well-distinguished objects, which we
denote by a, /?,.... S will be called a number system and its elements
a, j3, . . . will be called numbers if, besides being capable of definition
exclusively by means of rational numbers (i. c. ultimately by means of
natural numbers alone) 9 , these symbols a, jS, . . . satisfy the following four
conditions :

1. Between any two elements a and /3 of S one and only one of the
three relations 10

a < 0, a = a >

necessarily holds (this is expressed briefly by saying that S is an ordered
system) and these relations of order between the elements of S are subject
to the same fundamental laws 1 as their analogues in the system of rational
numbers u .

2. Four distinct methods of combining any two elements of S are
defined, called Addition, Subtraction, Multiplication and Division. With
a single exception, to be mentioned immediately (3.), these processes
can always be carried out to one definite result, and obey the same Fun-
damental Laws 2, I IV, as their analogues in the system of the rational



9 We shall come across actual examples m 3 and 5; for the moment, we
n.ay think of decimal fractions, or similar symbols constructed from rational numbers.
See also footnote 10, p. 12.

10 Cf. also footnotes 2 and 4.

11 As to what we may call the practical meaning of these relations, nothing
Is implied; "<" may as usual stand for "less than'*, but it may equally well mean
"before", "to the left of", "higher than", "lower than", "subsequent to", in fact
may express any relation of order (including "greater than"). This meaning merely
has to be defined without ambiguity and kept consistent. Similarly, "equality"
need not imply identity. Thus, for example, within the system of symbols of the
form p/q, where/), q are integers and q =4= 0, the symbols 3/4, 0/8, I)/ 12 are
generally said to be "equal"; that is, for certain purposes (calculating, measuring,
and so on) we define equality within our system of symbols in such a way that 3/4 -=
6/8-= -9-12, although 3/4, 0/8, -9-12 are in the first instance different
elements of that system (see also 14, note 1).



10 Chapter I. Principles of the theory of real numbers.

numbers 12 . (The "zero" of the system, which must be known in order
that the elements can be divided into positive and negative, is to be defined
as explained in footnote 14 below.)

3. With every rational number we can associate an element of S
(and all others "equal' ' to it) in such a manner that, if a and b denote
rational numbers, a, ft their associates from S:

a) the relation 1. holding between a and ft is of the same form as
that holding between a and b.

b) the element resulting from a combination of a and ft (i. e. a + ft,
a ft, a ft, or a -f- ft) has for its associated rational number the result
of the similar combination of a and b (i. e. a + b, a b, a b, or a -^ b
respectively).

[This is also expressed, more shortly, by saying that the system S
contains a sub-system S' sivnilar and isomorphous to the system
of rational numbers. Such a sub-system is in fact constituted by those
elements of S which we have associated with rational numbers 13 .]

In such a correspondence, an element of S associated with the rational
number zero, and all elements equal to it, may be shortly referred to as
the "zero" of the system of elements. The exception mentioned in 2.
then relates to division by zero 14 .



12 With reference to these four processes it should be noted, as in the case
of the symbols < and -, that no practical interpretation is implied. We also
draw attention to the fact that subtraction is already completely denned in terms
of addition, and division in terms of multiplication, so that, properly speaking,
only two modes of combining elements need be assumed known.

13 Two ordered systems are similar if it is possible to associate each element
of the one \\ith an element of the other in such a way that the same one of the
relations 4, 1 as holds between two elements of the one system also holds between
the two associated elements of the other, they are tsomorfihous relatively to the
possible modes of combining their elements, if the element resulting from a com-
bination of two elements of the one system is associated with that resulting from
the similar combination of the two associated elements of the other system.

14 The third of the stipulations by means of which we here characterise the
concept of number is fulfilled, moreover, as a consequence of the first arid second.
For our purposes, this fact is not essential; but as it is significant from a systematic
point of view, we briefly indicate its proof as follows' By 4, 2, there is an element
for which a -f- a. From the fundamental laws 2, 1, it then quite eastl> follow^
tha one and the same element of S satisfies a -I- - a, for every a. This element
, with all elements equal to it, is called the neutral element relatively to the process
of addition, or for brevity the "zero" in S. If a is different from this "zero", there
is, further, an element for which a e a; and it again appears thit this element
is the same as that satisfying n - a for any other a in S. This e, with all elements
equal to it, is called the neutral element relatively to the process of multiplication,
or, briefly, the "unit" in S. The elements of S produced bv repeated addition or
subtraction of this "unit", and any others equal to them, are then called "integers"
of S. All further elements of S (and all equal to them) which result fiom these
by the process of division then form the sub-system S' of S in question; that it
is similar and i amorphous to the system of all rational numbers is in fact easily
deduced from 4, i and 4, 2. Thus, as asserted, our concept of number is already
determined by the requirements of 4, 1, 2 and 4.



1. The system ot rational numbers and its gaps. 11

4. For any two elements a and /3 of S both standing in the relation
">" to the "zero" of the system, there exists a natural number n for
which n j8 > a. Here n )3 denotes the sum ]8 -f- jf? + . . . -|- ]8 containing
the element ]8 w times. (Postulate of Eudoxus; cf. 2, VI.)

To this abstract characterisation of the concept of number we
will append the following remark l5 : If the system S contains no other
elements than those corresponding to rational numbers as specified
in 3, then our system does not differ in any essential feature from the
system of rational numbers, but only in the (purely external) designation
of the elements by symbols, or in the (purely practical) interpretation
which we give to these symbols; differences almost as irrelevant,
at bottom, as those which occur when we write figures at one time in
Arabic characters, at another, in Roman or Chinese, or take them to
denote now temperature, now velocity or electric charge. Disregarding
external characteristics of notation and practical interpretation, we
should thus be perfectly justified in considering the system S as identical
with the system of rational numbers and in this sense we may put a = a,

b --.&....

If, however, the system S contains other elements besides the above
mentioned, then we shall say that S includes the system of rational
numbers, and is an extension of it. Whether a system of this more com-
prehensive kind exists at all, remains for the moment an open question;



15 We have defined the concept of number by a set of properties characterising
it. A critical construction of the foundations of arithmetic, which is quite out
of the question within the limits of this volume, would have to comprise a strict
investigation as to the extent to which these properties are independent of one
another, i. e. whether any one of them can or cannot be deduced from the rest as
a provable fact. Further, t would have to be shuwn that none of these fundamental
stipulations is in contradiction with any other and other matters too would
require consideration. These investigations are tedious and have not yet reached a
final conclusion.

In the treatment by E. Landau mentioned on p. 2, footnote 7, it is proved with
absolute rigour that the fundamental laws of arithmetic which we have set up
can all be deduced from the following 5 axioms relating to the natural numbers:

Axiom 1 : 1 is a natural number.

Axiom 2: For every natural number n there is just one other number
that is called the successor of n. (Let it be denoted by n'.)

Axiom 3: We have always n' 1.

Axiom 4: From m' ~~ n' t it follows that m n.

Axiom 5: The induction law V is valid (in its first form).

These 5 axioms, first formulated as here by G. Peano, but in substance set up
by R. Dedektnd, assume that the natural numbers as a whole are regarded as given,
that a relation of equality (and hence also inequality) is defined between them,
and that this equality satisfies the relations 1, 1, 2, 3 (which belong to pure
logic).



12 Chapter I. Principles of the theory of real numbers.

but an example will come before our notice presently in the system of
real numbers 16 .

Having thus agreed as to the amount of preliminary assumption
we require, we may now drop all argument on the subject, and again
raise the question: What do we mean by saying that we know the number
V2 or TT?

It must in the first instance be termed altogether paradoxical that
a number having its square equal to 2 does not exist in the system so
far constructed 17 , or, in geometrical language, that the point A of
the number-axis, whose distance from O equals the diagonal of the
square of side O U, coincides with none of the "rational points". For
the rational numbers are dense, i. e. between any two of them (which

are distinct) we can point out as many more as we please (since, if a ^ b y

fo a

the n rational numbers given by a + v , for v = 1, 2, . . . , n, evi-

n -|- 1

dently all lie between a and b and are distinct from these and from one
another); but they are not, as we might say, dense enough to symbolise
all conceivable points. Rather, as the aggregate of all integers proved
too scanty to meet the requirements of the four processes of arithmetic,



16 The mode of defining the number-concept given in 4 is of course not
the only possible one. Frequently the designation of number is still ascribed to
objects which fail to satisfy some one or other of the requirements there laid down.
Thus for instance we may relinquish the condition that the objects under con-
sideration should be constructively developed from rational numbers, regarding
any entities (for instance points, or distances, or such like) as numbers, provided
only they satisfy the conditions 4, 1 4, or, in short, are similar and isomorphous
to the system we have just set up. This conception of the notion of number,
in accordance with which all isomoiphous systems must be regarded as in the ab-
stract sense identical, is perfectly justified from a mathematical point of view, but
objections necessarily arise in connection with the theory of knowledge. We
shall encounter another modification of the number -concept when we come to
deal with complex numbers.

17 Proof'. There is certainly no natural number of square equal to 2, as
I 2 - 1 and all other integers have their squares ^ 4. Thus V2 could only be a

(positive) fraction , where q may be taken ^ 2 and prime to p (i. e. the fraction

is in its lowest terms). But if - is in its lowest terms, so is ( - J , which there-

Q W/ Q ' q

fore cannot reduce to the whole number 2. In a slightly different form: For any
two natural numbers p and q without common factor, we have necessarily /> 2 4- 2 q~.
For since two integers without common factors cannot both be even, either p is
odd, or else p is even and q odd. In the first case /> 2 is again odd, hence cannot
equal an even integer 2 q 2 . In the second case p 2 = (2 p'Y is divisible by 4, but 2 q z
is not, since it is double an odd number. So p' 2 =1= 2 r/ 2 again. This Pythagoras is
said to have already known (cf. M. Cantor, Gesch. d. Mathem., Vol. 1, 2 lj ed., pp.
142 and 169. 1894).



1. The system of rational numbers and its gaps. 13

so also the aggregate of all rational numbers contains too many gaps 18
to satisfy the more exacting demands of root extraction. One feels,
nevertheless, that a perfectly definite numerical value belongs to the point
A and therefore to the symbol V2. What are the tangible facts which
underlie this feeling?

Obviously, in the first instance, this: We do, it is true, know
perfectly well that the values 1-4 or 1*41 or 1*414 etc. for V2 are in-
accurate, in fact that these (rational) numbers have squares < 2, i. e.
are too small. But we also know that the values 1-5 or 1-42 or
1*415 etc. are in the same sense too large; that the value which we
are attempting to reach would have therefore to lie between the corres-
ponding too large and too small values. We thus reach the definite
conviction that the value of N/2 is within our grasp, although the given
values are all incorrect. The root of this conviction can only lie in
the fact that we have at our command a process, by which the above
values may be continued as far as we please; we can, that is, form
pairs of decimal fractions, with 1, 2, 3, ... places of decimals, one frac-
tion of each pair being too large, and the other too small, and
the two differing only by one unit in the last decimal place, i. e. by (y 1 ^) 71 ,
if n is the number of decimal places. As this difference may be made
as small as ive <please, by sufficiently increasing the number n of given
decimal places, we are taught through the above process to enclose
the value which we are in search of between two numbers as near
as we please to one another. By a metaphor, somewhat bold at the
present stage, we say that through this process V2 itself is "given",
in virtue of it, V2 is "known", by it, V2 may be "calculated", and
so on.

We have precisely the same situation with regard to any other value
which cannot actually be denoted by a rational number, as for instance
TT, log 2, sin 10 etc. If we say, these numbers are known, nothing more
is implied than that we know some process (in most cases an extremely
laborious one) by which, as detailed in the case of V2, the desired value
may be imprisoned, hemmed in, within a narrower and narrower space
between rational numbers, and this space ultimately narrowed down
as much as we please.

For the purpose of a somewhat more general and more accurate



18 This is the paradox, scarcely capable of any direct illustration, that a set
of points, dense in the sense just explained, mav already be marked on the number
axis, and yet not comprise all the points of the straight line. The situation may
be described thus: Integers form a first rough partition into compartments; rational
numbers fill these compartments as with a fine sand, which on minute inspection
inevitably still discloses gaps. To fill these will be our next problem.



14 Chapter I. Principles of the theory of real numbers.

statement of these matters, we insert a discussion of sequences of rational
numbers, provisional in character, but nevertheless of fundamental im-
portance for all that comes after.

2. Sequences of rational numbers 1 .

In the process indicated above for calculating V2, successive well-
defined rational numbers were constructed; their expression in decimal
form was material in the description; from this form we now propose
to free it, and start with the following

5. Definition. If, by means of any suitable process of construction, we

can form successively a first, a second, a third, . . . (rational) number and
if to every positive integer n one and only one well-defined (rational) number
x n thus corresponds, then the numbers

X l> X 2> X '3> > X m

(in this order, corresponding to the natural order of the integers 1 , 2, 3, ...
n, . . .) are said to form a sequence. We denote it for brevity by (x n )
or (*!, * 2 , . . .).

O Examples.



i u i

* n ~~ ] '* C * sec l uence > or ] > 2' 3'



2. x n - 2"; i. e. the sequence 2, 4, 8, 16, ...

3. x n a n ; i. e. the sequence a, a 2 , a 3 , . . . , where a is a given number.
- 4. x n ~ H 1 - (- 1 ) 71 }; 1- e. the sequence 1, 0, 1, 0, 1, 0, ...

6. x n = the decimal fraction for V2, terminated at the w th digit.
/ iyi i 111

6. x n - L_^.__ ; i. e . the sequence 1, - i, + * - ' . . .

n & j *

7. Let x 1 = 1, x 2 = 1, # 3 = x l + # 2 ~ ^ and, generally, for n > 3, let
x n ~ x n-i + x n-z- We thus obtain the sequence 1, 1, 2, 3, 5, 8, 13, 21, . . . , ubually
called Fibonacci's sequence.

8. l,2,},-8,-J,S,J,-3,-J,...

o 3 4 5 + I

A 2,3,3,..., - n ....

10 1 2 3 4 - 1

10 - U '2'3'4' n"""

11. x n the w th prime number 2 ; i. e. the sequence 2, 3, 5, 7, 11, 13, ... \

12. The sequence 1, |, ^, g, ^ m wh.ch * = (l + J + . . . + i)



1 In this section all literal symbols will continue to stand for rational numbers
only.

2 Euclid proved that there is an infinity of primes. If p lt p 2 , . . . , p k are any
prime numbers, then the integer m -= (/>,/> 2 . . . p k ) + 1 is either a prime different
from pi, pi, . . . , p k , or else a product of such primes. Hence no finite set of prime
numbers can include all primes.



2. Sequences of rational numbers. 15

Remarks.

1. The law of formation may be quite arbitrary; it need not, in particular,
be embodied in any explicit formula enabling us to obtain x n , for a given n t by
direct calculation. In examples 6, 5, 7 and 11, clearly no such formula can be im-
mediately written down. If the terms of the sequence are individually given, neither
the law of formation (cf. 6, 5 and 12) nor any other kind of regularity (cf. 6, ll)
among the successive numbers is necessarily apparent.

2. It is sometimes advantageous to start the sequence with a "0 th " term x ,
or even with a ( l) th or ( 2) th term, x__ lt #_ 2 . Occasionally, it pays better to start
indexing with 2 or 3. The only essential is that there should be an integer m ^
such that x n is defined for every n ^ m. The term x m is then called the initial term
of the sequence. We will however, even then, continue to designate as the n ih term
lhat which bears the index n. In 6, 2, 3 and 4, for instance, we can without further
difficulties take a th term or even ( l) t}l or ( 2) <h to head the sequence. The "first
term" of a sequence is then not necessarily the term with which the sequence begins.
The notation will be preferably (x 0> *i> ) or (#-i #o> ) etc., as the case may be,
unless it is either quite clear or irrelevant where our enumeration begins, and the
abbreviated notation (x n ) can be adopted.

3. A sequence is frequently characterised as infinite. The epithet is then
merely intended to emphasize the fact that every term is succeeded by other terms.
It is also said that there is an infinite number of terms. More generally, there is
said to be a finite number or an infinite number of things under consideration accord-
ing as the number of these things can be indicated by a definite integral number
or not. And we may remark here that the word infinite, when otherwise used in
the sequel, will have a symbolic significance only, intended as a concise expression
of some perfectly definite (and usually quite simple) circumstance.

4. If all the terms of a sequence have one and the same value c, the sequence
is said to be identically equal to c, and in symbols (x n ) ~ c. More generally, we shall
write (x n ) == (x n ') if the two sequences (x n ) and (x n ') agree term for term, i. e. for
every index in question x n ~ x n '.

5. It is often helpful and convenient to represent a sequence graphically
by marking off its terms on the number-axis, or to think of them as so marked.
We thus obtain a sequence of point*. But in doing this it should be borne in mind
that, in a sequence, one and the same number may occur repeatedly, even "in-
finitely often" (cf. 6, 4); the corresponding point has then to be counted (i. e. con-
sidered as a term of the sequence of points) repeatedly, or infinitely often, as the
case may be.

0. A graphical representation of a different kind is obtained by marking,
with respect to a pair of rectangular coordinate axes, the points whose coordinates
are (w, x n ) for w = 1, 2, 3, ... and joining consecutive points by straight segments.
The broken line so constructed gives a picture (diagram, or graph) of the sequence.

To consider from the most diverse points of view the sequences hereby
introduced, and the real sequences that will shortly be defined, will be the
main object of the following chapters. We shall be interested more par-
ticularly in properties which hold, or are stipulated to hold, for all the
terms of the sequence, or at least for all terms beyond (or following) some
definite term 3 . With reference to this last restriction, it may sometimes



8 E. g. all the terms of the sequence 6, 9 are > 1. Or, all the terms of the
sequence 6, 2 after the 6 th are > 100 (or more shortly: for n > 6, x n > 100).



16 Chapter I. Principles of the theory of real numbers.

be said that particular considerations in hand are valid "a finite number
of terms being disregarded", or only concern the ultimate behaviour of
the sequence. Our first examples of considerations of the kind referred
to are afforded by the following definitions:

Definitions. I. A sequence is said to be bounded*, if there is a
positive number K such that each term x n of the sequence satisfies the
inequality

x n ^ K or



The number K is then called a bound of the sequence.



Remarks and Examples.

1. In definition 8, it is a matter of practical indifference whether we write
"" or "<K". For if | x n \ ^ K holds always (i. e. for every n in question),

then we can also find a constant K' such that \ x n \ < K' holds always; indeed,
clearly any K.' > K will serve the purpose. Conversely, if | x n \ < K. always, then
a fortiori \ x n \ ^ K. When the exact magnitude of the bound comes in of course
the distinction may be essential.

2. If K is a bound of (x n ) t then so is any larger number K'.

3. The sequences 6, 1, 4, 5, 6, 9, 10 are evidently bounded; so is 6, 3, pro-
vided | a | Si 1. The sequences 6, 2, 7, 8, 11 are certainly not so. Whether 6, 3
for every \a\ >1, or 6, 12, is bounded or not, i> not immediately obvious.

4. If all we know is the existence of a constant K lt such that x n < K lt for
every n t then the sequence is said to be bounded on the right (or above) and K l is
called a bound above (or a right hand bound) of the sequence.

If there is a constant K 2 such that x n > K 2 always, then (x n ) is said to be
bounded on the left (or below) and K 2 is called a bound below (or a left hand bound)
of the sequence.

Here K and K 2 need not be positive.

5. Supposing a given sequence is bounded on the right, it may still happen
that among its numbers none is the greatest. For instance, 6, 10 is bounded on
the right, yet every term of this sequence is exceeded by all that follow it, and none
can be the greatest 6 . Similarly, a sequence bounded on the left need contain no
least term; cf. 6, 1 and 0. (With this fact, which will appear at first sight para-
doxical, the beginner should make himself thoroughly familiar.)

Among a finite number of values there is of course always both a greatest and
a least, i. e. a value not exceeded by any of the others, and one which none of the
others falls below. (There may, however, be several equal to this greatest or least
value.)

(5. The property of boundedness of a sequence x n (though not the actual value
of one of the bounds) is a property of the tail-end of the sequence ; it is unaffected
by any alteration to an isolated term of the sequence. (Proof?)



4 This nomenclature appears to have been introduced by C. Jordan, Cours
d'analyse, Vol. 1, p. 22. Paris 1893.

6 The beginner should guard against modes of expression such as these,
which may often be heard: "for n infinitely large, x n 1"; "1 is the greatest
number of the sequence". Anything of this sort is sheer nonsense (cf. on this point
7, 3). For the terms of the sequence are 0, ,],},... and none of these is -- 1, on
the contrary all of them are < 1. And there is no such thing as an "infinitely large n".



2. Sequences of rational numbers. 17

II. A sequence is said to be monotone ascending or increasing 9.

if, for every value of n,

X n ^ X n+ il

it is said to be monotone descending or decreasing if, for every n,

x n S X n +l*

Both kinds will also be referred to as monotone sequences.

Remarks and Examples.

1. A sequence need not of course be either monotone increasing, or mono-
tone decreasing; cf. 6, 4, 6, 8. Monotone sequences are, however, extremely com-
mon, and usually easier to deal with than those which are not monotone. That
is why it is convenient to give them a distinguishing name.

2. Instead of "ascending" we should more strictly say "non-descending",
and instead of "descending", "non-ascending". This, however, is not customary.
If in any special instance the sign of equality is excluded, so that x n < x ni l or
v n > x n} ,, as the case may be, for every n t then the sequence is said to be strictly
monotone (increasing or decreasing).

3. The sequences 6, 2, 5, 7, 10, 11, 12 and 6, 1, 9 are monotone; the first-
named ascending, the others descending. 6, 3 is monotone descending, if ^ a ^ 1,
but monotone ascending if a " . 1 ; for a < 0, it is not monotone.

4. The designation of "monotone" is due to C. Neumann (Ober die nach
Kteis-, Kugel- und Zylmderfunktionen fortschreitenden Entwickelungen, pp. 2(5,
27. Leipzig 1881).

We now come to a definition to which the reader should pay
the greatest attention, sparing no effort to make himself master of its
meaning and all that it implies.

III. A sequence will be called a null sequence if it possesses the fol- 10
lowing property: given any arbitrary positive (rational) number e, the in-
equality

| x n | < c

is satisfied by all the terms, with at most a finite number 6 of exceptions. In
other words : an arbitrary positive number e being chosen, it is always possible
to designate a term x m of the sequence, beyond which the terms are less than
e in absolute value. Or a number n Q can always be found, such that

|*|< for



Remarks and Examples.

1. If, in a given sequence, these conditions are fulfilled for a particular e,
they will certainly be fulfilled for every greater e (cf. 8, 1), but not necessarily for
any smaller e. (In 6, 10, for instance, the conditions are fulfilled for e = 1 and there-
fore for every larger e, if we put n =0; for e - } it is not possible to satisfy them.)
In the case of a null sequence, the conditions have to be fulfilled for every positive

8 Cf. 7, 3.



18 Chapter I. Principles of the theory of real numbers.

, and in particular, therefore, for every very small e > 0. On this account, it is
usual to formulate the definition somewhat more emphatically as follows: (x n )
is a null sequence if, to every > 0, however small, there corresponds a number
n such that

| x n | < c for every n > n .



I x n | < c, provided n >
whatever be the value of e. It is thus sufficient to put n a



Here w () need not be an integer.

2. The sequence 6, 1 is clearly a null sequence; for

-,

.

3. The place in a given sequence beyond which the terms remain numeri-
cally < e, will naturally depend in general on the magnitude of e; speaking broadly,
it will lie further and further to the right (i. e. n n will be larger and larger), the
smaller the given c is (cf. 2). This dependence of the number n on e is often
emphasised by saying explicitly: "To each given corresponds a number n Q w (t)
such that ..."

4. The positive number below which | x n \ is to he from some stage onwards
need not always be denoted by c. Any positive number, however designated, may
serve. In the sequel, where e, a, K t . . . , denoting any given positive numbers, we

may often use instead ^, ^, ^, e 2 , a e, t a , etc.

5. The sign of x n plays no part here, since | x n \ = | x n \. Accordingly
6, is also a null sequence.

6. In a null sequence, no term need be equal to zero. But all terms, whose
index is very large, must be very small. For if I choose e = 10~~, say, then for cver\
n > a certain n 0t ( x n \ must be < 10~' 5 . Similarly for e - - 10~ 10 and for any other e.

7. The sequence (a n ) specified in 6, 3 is also a null sequence provided \ a \ < 1.
Proof. If a 0, the assertion is trivial, since then, for every > 0, | x n \ <

for every n. If < | a \ < 1, then (by 3, 1,4). ---. > 1. If therefore we put

I * I

* = 1 4- p t then p > 0.
I a \

But in that case, for every n ^ 2, we have

(a) <l + #) n >! + #

For when n = 2, we have (1 4- />) 2 ^ 1 + 2/> -f p z > 1 -f 2p; the stated relation
therefore holds in that case. If, for n k ^ 2,

(!+/>)*> 1-1- kp,
then by 2, III, 6



therefore our relation, assumed true for n = k t is true for w = & + 1. By 2, V
it therefore holds 7 for every n ^ 2.



7 The proof shows moreover that (a) is valid for n ^ 2 provided only 1 4- P
> 0, i. e. p > 1, but =t=0. For p -- and for n = 1, (a) becomes an equality.
For /> > 0, the validity of (a) follows immediately from the expansion of the left-
hand side by the binomial theorem. The relation (a) is called Bernoulli's Inequality
(James Bernoulli, Propositiones arithmeticae de seriebus, 1689, Prop. 4).



2. Sequences of rational numbers. 19

Accordingly, we now have



so that, however small c > may be, we have

I x n I ^ I aU I < for every n >

P



8. In particular, besides the sequence f ) mentioned in 2., ( -), (-- J,
//4\"\ . W \ 2n / \ 3fi /

( (?) )'



i ui

9. A similar remark to that of 8, 1 may be appended to Definition 10: no
essential modification is produced by reading "5* e" for "< e" there. In fact,
if, for every n > w () , | x n \ < e, then a fortiori \ x n \ 5^ c; conversely, if, given any
e, ?2 can be so determined that | x n \ '^ e for every n > w 3 , then choosing any posi-
tive number e t < c there is certainly an n 1 such that | x n \ fg c l9 for every n > n^
and consequently

| x n | < for every n > n t ;

the conditions in their original form are thus also fulfilled. Precisely analogous
considerations show that in Definition 10 "> H O " and "^ w " are practically inter-
changeable alternatives.

In any individual case, however, the distinction must of course be taken into
account.

10. Although in a sequence every term stands entirely by itself, with a definite
fixed value, and is not necessarily in any particular relation with the preceding
or following terms, yet it is quite customary to ascribe "to the terms x n ", or "to
the general term' 1 any peculiarities in the sequence which may be observed on
running through it. We might say, for instance, in 6, 1 the terms diminish; in
6, 2 the terms increase; in 6, 4 or 6, 6 the terms oscillate; in 6, 11 the general
term cannot be expressed by a formula, and so on. In this sense, the character-
istic behaviour of a null sequence may be described by saying that the terms become
arbitrarily small, or infinitely small 8 ; by which neither more nor less is meant than
is contained in Definition 9 10, viz. that for every > however small the terms
are ultimately (i. e. for all indices n > a suitable n ; or from and after, or beyond,
a certain n (t ) numericallv less than e.

11. A null sequence is ipso facto bounded. For if we choose e I, then there
must be an integer n, such that, for every n > n i9 \ x n \ < 1. Among the finite
number of values | .v t |, | x 2 1, . . . , ! .v nl |, however, one (cf. 8, 5) is greatest, M
say. Then for K M -f 1, obviously | .v w | is akvays < K.

12. To prove that a given sequence is a null sequence, it is indispensable
to show that for a prescribed e > 0, the corresponding w y can actually be proved
to exist (for instance, as in the examples that follow, by actually designating such
a number). Conversely, if a sequence (x n ) is assumed to be a null sequence, it is
thereby assumed that, for every t, the corresponding n may really be regarded as
existent. On the other hand, the student should make sure that he understands
clearly what is meant by a sequence not being a null sequence. The meaning is
this : it is not true that, for every positive number *, beyond a certain point | x n \



6 This mode of expression is due to A. L. Caitchy (Analyse algebrique, pp. 4
and 2G).

9 There need of course be no question here of the sequence being monotone.
Also, in any case, some | x n | 's of index 5* w may already be < c.



20 Chapter I. Principles of the theory of real numbers.

is always < e; there exists a special positive number e,,, such that | x n \ is not, beyond
tiny // , always < c () ; after every // there is a larger index n (and therefore an in-
finite number of such indices) for which | v n | ]> c .

1 3. Finally we may indicate a means of interpreting geometrically the special
character of a null sequence.

Using the graphical representation 7, 5, the sequence is a nuii sequence if
its terms ultimately (for n > n n ) all belong to the interval 10 e . . . -f- . Let
us call such an interval for brevity an e-neighbourhood of the origin; then we may
state (x n ) is a null sequence if every c-neighbourhood of the origin (however small)
contains all but a finite number, at most, of the terms of the sequence.

Similarly, using the graphical representation 7, 6, we can state: (x n ) is a
null sequence if every *-stnp (however narrow) about the a\ts of absci^ae contains
the entire graph, with the exception, at most, of a finite initial portion, the e-strip
being limited by parallels to the axis of abscissae through the two points (0, e).

14. The concept of a null sequence, the "arbitrarily small given positive
number c", to which we shall from now on have continually and indispensably to
appeal, and which may thus be said to form a main support for the whole super-
structure of analysis, appears to have been first used in 1055 by J. Walks (v. Opera
I., p. 3S2/3). Substantially, however, it is already to be found in Euclid, Elements V.

We are already in a better position to comprehend what is involved
in the idea, discussed above, of a meaning for V2 or TT or log 5. In
forming on the one hand (we keep to the instance of V2) the numbers

* 1 =l-4; *o=l-41; * a = 1-414; * 4 == 1-4142; ...
on the other, the numbers

yi = I'O; y* - 1-42; ^ - 1415; y, =-- 1-4143; . . .

we are obviously constructing two sequences of (rational) numbers (x n )
and (y n ) according to a perfectly definite (though possibly very laborious)
method of procedure. These two sequences are both monotone, (x n )
increasing, (y n ) decreasing. Furthermore x n is <y n for every //, but the
differences, i. e. the numbers

y n x n =- d n

form, by 10, 8, a null sequence, since d n = n . These are clearly the

facts which convince us that we "know" V2, and can "calculate" it ?
and so on, although as we said before no one has yet had the
value V2 completely within his view, so to speak. If we refer
again to the more suggestive representation on the number-axis, then,
obviously (cf. fig. 1, p. 25): the points x l and y determine an interval



10 The word interval denotes a portion of the number-axis between a definite
pair of its points. According as we reckon these points themselves as belonging
to the interval or not, this is termed closed or open. Unless otherwise stated, the
interval will always in the sequel be regarded as closed. (For 10, 13 this is immaterial,
by 10, 9.) Supposing a to be the left end point, b the right end point, of an interval,
we call this for brevity the interval a ... b.



2. Sequences of rational numbers. 21

! of length d l ; the points x 2 and jy 2 similarly, an interval / 2 of length
. Since



the second interval lies wholly within the first. Similarly, the points X 3
and V 3 determine an interval of length d 3 , completely within / 2 , and
generally, the points x n and y n determine an interval f n completely
inside J n - V The lengths of these intervals form a null sequence; the
intervals themselves shrink up, one surmises, about a definite
number, contract to a quite definite point.

It only remains to examine how near this surmise is to truth. With
this purpose in view, we state, more generally, the following:

Definition. To express the fact that a monotone ascending sequence 11.
(x n ) and a monotone descending sequence (y n ) are given, whose terms for
every n satisfy the condition

x n ^y n

and for which the differences

dn=y n - Xn

form a null sequence, we say for brevity that we are given a nest of
intervals (Intervallschachtelung)*. TJie n th interval stretches
from x n to y n and has length d n . The nest itself will be denoted by ( /) or

by (# | y n )-

The conjecture which we made above now finds its first confirma-
tion in the following:

Theorem f . There is at most one (rational) point s belonging to all 12.
the intervals of a given nest, that is to say satisfying, for every n t the in-
equality

*n^s^ y n >

Proof: If there were, besides $, another number s f differing from
it, and also satisfying the inequality



for every , then, for every , besides

x n <Ls< y n ,



* A set or series of similar objects is said to form a nest or to be nested (inein-
ander geschachtelt) when each smaller one is enclosed or fits into that which is next
in size to it. The word nest is here used with the additional (ideal) characteristic
implied, that the sizes diminish to zero. When this is not implied, we shall use the
more explicit phrase that each is contained in the preceding (or we might say that
they are nested).

f We note here for future reference that this theorem continues to hold un-
altered when the numbers which occur are arbitrary real numbers.

2 (051)



22 Chapter I. Principles of the theory of real numbers.

we should also have (v. 3, I, 4)

by 3, I, 2 and 3, II, 5, the inequalities

would therefore hold for every n. Choosing = | s s r |, d n would never
(a fortiori not for every n beyond a certain // ) be < . This contradicts
the hypothesis that (d n ) is a null sequence. The assumption that two
distinct points belong to all the intervals is therefore inadmissible 11 .
Q. E. D.

Remarks and Examples.

1. Let* n = "-"--, y = ^J; that is to say,/,, - 5J=J . . . "-J- 1 , d n = ?

We can at once verify that we actually have a nest of intervals here, since

2
x n ^ x n+i "^ yn+i ^ Vn ^ or ever y n t an< ^ since, for every n > , we have d n < t



however > be chosen.

The number 5=1 here belongs to all the / 's, since n ~~- - < 1 < - ~

* n n n

for every n. No number other than 1 can belong therefore to all the intervals.

2. Let f n be defined as follows 12 : / is the interval ... 1; / l the left half
of A; Jz the right half ofy^ y 3 the left half ofy 2 ; and so on. These intervals are

obviously each contained in the preceding; and since J n has length d n k>n , tmd

these numbers form a null sequence, we have a nest of intervals. A little considera-
tion shows that the sequence of the x n 's consists of the numbers

0> 4' 4 10 ~~ 16' 4 + T6 ~*~ G4 "" 6T * * '

each taken twice running; and that the sequence of y n 's begins with 1 and con-
tinues with

1 ~" 2 = 2 J l ~ 2 ~ 8 ^ 8' ~ 2 "" 8 ~~ 32 ^ 32* * ' *
each taken twice running. Now

1,1,1, , 1 1 A 1\ ^ 1



4 16 Ci ' ' ' P = 3 ~ 4*- 3



~ 4*-)



11 From a graphical point of view, what the proof indicates is that if $ and
$' belong to all the intervals, then each interval has a length at least equal to the
distance | s s' | between s and s' (v. 3, II, 6); these lengths cannot, therefore,
form a null sequence.

12 Here we let the index start from (cf. 7, 2).

13 For any two numbers a and b, and every positive integer k t the formula

a fc - b k = (a - b)(a k ~ l + a k ~* b+ ... + a b k ~ 2 + * fc ~ 1 )
is known to hold. Whence, more particularly, for a =t= 1, the formulae

1 + a + . . . + a k ~* = ! ~ ** and a + a* + . . . + a k = \ " a * . a.
l o 1 a



3. Irrational numbers. 23

Hence, for every n t x n < J < y n \ thus s J is the single number which belongs
to all the intervals. Here, therefore, (/ n ) "defines" or " determines* ' the number i,
or (y n ) shrinks up to the number J.

3. vf we are given a nest of intervals (/ n ), and a number s has been recog-
nised as belonging to all the / n 's, then by our theorem, 5 is quite uniquely deter-
mined by ( / n ). We therefore say, more pointedly, that the nest (/ n ) "defines" or
"encloses" the number s. We also say that 5 is the innermost point of all the intervals.

4. If s is any given rational number and we put, for n 1 , 2, . . . , x n ~ s

1 n

and y n s + -, then (x n \ y n ) is evidently a nest of intervals determining the number

s itself. But this is also the case if we put, for every n, x n -^ s and y n s. Mani-
festly, we can, in the most various ways, form nests of intervals defining a given
number.

This theorem, however, only confirms what we may regard as one
half of our previously described impression; namely, that if a number
s belongs to all the intervals of a nest, then there is none other besides
with this property, s is uniquely determined by the nest.

The other half of our impression, namely, that there must also
always be a (rational) number belonging to all the intervals of a nest,
is erroneous^ and it is precisely this fact which will become our induce-
ment for extending the system of rational numbers.

This the following example shows. As on p. 20, let x l 14; x.> 1-41 ; . . .;
y l 1 >; y z = 1-42; . . . Then there is no rational number s> for which x n !L A "? y n
for every n. In fact, if we put

v ' v a v 7 v 2
x n x n Vn ~ 3>n

then the intervals / n ' x n ' . . . y n ' also form a nest 11 . But x n f x^ < 2 for all n,
and y n ' -- y n 2 > 2 for all n (because this was how x n and y n were chosen), i. e.
x n f < 2 < y n '. On the other hand, if x n ;< s ^-_ y n we should have, by squaring
(as we may, by 3, 1, 3), x n ' ? s 2 ^ y n ' for all n. By our theorem 12 this would in-
volve s 2 = 2, which is however impossible, by the proof given in footnote 17 on
p. 12. Here, therefore, there is certainly no (rational) number belonging to all the
intervals.

In the following paragraphs, we will investigate what, in a case such
as this, should be done.

3. Irrational numbers.

We must come to terms with the fact that there is no rational
number whose square is 2, that the system of rational numbers is too
defective, too incomplete, too full of gaps, to furnish a solution for the



14 For it follows from x n ^ x n l < y n+ i ^ y n since all the numbers are
positive, so that squaring (cf. 3, I, 3) is allowed that x n ' ^ *v' n+1 < y' nf i ^ y n ';
further y n ' x n ' -- (y n + x n )(y n .v n ); therefore, since .v r} and y n are certainly

< 2 for every n, y n ' x n ' < --^ n , i. e. < s, provided J )n < ; and this, by 10, 8,
is certainly the case for every n > a certain w .



24: Chapter I. Principles of the theory of real numbers.

equation x 2 2. Indeed, this is only one of many equations for whose
solution the material of the system of rational numbers proves insufficient.
Almost all the numerical values which we are in the habit of denoting
by \/n t log n, sin a, tan a and so on, are non-existent in the system of
rational numbers and can no more be immediately "obtained", or "deter-
mined", or be "stated in figures", than can V2. The material is too coarse
for such finer purposes.

The considerations brought forward in the preceding paragraphs
point to means for providing ourselves with more suitable material.
We saw, on the one hand, that, behind the conviction that we do
know V2, there lay no more, substantially, than the fact that we possess
a method by which a perfectly definite nest of intervals may be
obtained ; for its construction, the solution of the equation x 2 2 of
course gave the occasion lr> . We saw, on the other hand, that if a
nest (/ n ) encloses any number s capable of specification at all (this still
implying that it is a rational number) then this number s is quite uniquely
defined by the nest ( / n ), - so unambiguously, indeed, that it ia entirely
indifferent, whether I give (write down, indicate) the number directly,
or give, instead, the nest (/) with the tacit addition that, by the latter,
I mean precisely the number s which it uniquely encloses or defines. In
this sense, the two data (the two symbols) are equivalent, and may
to a certain extent be considered equal 16 , so that we may write in-
deed:

(/n) = * or (x n | y n ) = s.

15 The kernel of this procedure is in fact as follows: We ascertain that

I 2 < 2, 2 2 > 2, and accordingly put # 1, y ~ 2. We then divide the interval

k
J Q =- x . . . y into 10 equal parts, and taking the points of division, 1 + , for

k -= 0, 1, 2, . . . , 9, 10, determine by trial whether their squares are > 2 or < 2.
We find that the squares corresponding to k 0, 1, 2, 3, 4 are too small, those
corresponding to k = 5 y G, . . . , 10 too large, and accordingly we put Xi =1-4 and
y t == 1-5. Next, we divide the interval /j. x l . . . y l into 10 equal parts, and go
through a similar test with regard to the new points of division and so on. The
known process for extracting the square root of 2 is intended mainly to make the
successive trials as mechanical as possible. The corresponding treatment of,
for instance, the equation 10* = 2 (i. e. determination of the common logarithm
of 2) involves the following nest of intervals: Since 10 < 2, 10 l > 2, we here pu:
X Q = 0, y = 1 and divide / = # . . . y into 10 equal parts. For the points of

division, lftt we next test whether 10*/ 10 < 2 or > 2, that is to say, whether 10 fc

< 2 10 or > 2 10 . As a result of this trial, we shall have to put x^ ~ 0-3, y^ ^ 0-4.
The interval / l x l . . . y l is again divided into 10 equal parts, the same pro-

3 k

cedure instituted for the points of division ^ -}- . and, in consequence, x z put

equal to 30 and y a to 31 and so on. This obvious procedure is of course
much too laborious for practical calculations.

16 The justification for this is provided by Theorems 14 to 19.



3. Irrational numbers. 25

Consequently, we will not say merely: "the nest (/ n ) defines the number
s" but rather "(/) is only another symbol for the number $", or in fine,
"(/ n ) is the number s" exactly as we are used to look upon the decimal
fraction 0-333 ... as merely another symbol for the number , or as being
precisely the number itself.

It now becomes extremely natural to introduce tentatively an
analogous mode of expression with regard to those nests of intervals
which contain no rational number. Thus if x n , y n denote the numbers
constructed previously in connection with the equation x 2 = 2, one
might seeing that in the system of rational numbers there is not
a single one whose square =2 decide to say that this nest (x n \ y n )
determines the "true" "value of V2 " though one incapable of being
symbolised by means of rational numbers, that it encloses this



X



U -J J

Fig. 1.

value unambiguously in fine, "it is a newly created symbol for this
number", or, for brevity, "it is the number itself". And similarly in every
other case. If (/ n ) (x n \ y n ) is any nest of intervals and no rational
number s belongs to all its intervals, we might finally resolve to say that
this nest encloses a perfectly definite value, though one incapable of
being directly symbolised by means of rational numbers, it deter-
mines a perfectly definite number, though one unfortunately non-
existent in the system of rational numbers, it is a newly created symbol
for this number, or briefly: is the number itself; and this number, in
contradistinction to the rational numbers, would then have to be called
an irrational number.

Here certainly the question arises: Can this be done without
further justification ? Is it allowable ? May we, without more ado,
designate these new symbols, the nests (x n \ y n ), as numbers? The fol-
lowing considerations are intended to show that to this course there is
no obstacle whatever.

In the first instance, a simple graphical illustration of these facts
on the number-axis (see fig. 1) gives every appearance of justification to
our resolution. If, by any construction, we have marked a point P on
the number-axis (e. g. by marking off to the right of O the length



26 Chapter I. Principles of the theory of real numbers.

of the diagonal of a square of side O U) then we can in any number
of ways define a nest of intervals enclosing the point P. We may
do so in this way, for instance. First of all we imagine all integers

^ marked on the axis. Of these, there will be exactly one, say p,

such that our point P lies in the stretch from p inclusive to (/>+!)
exclusive. Accordingly we put x -= p, y p + 1, and divide the
interval J Q = x . . . y Q into 10 equal parts 17 . The points of division

k
are p + - (with k = 0, 1, 2, . . . , 10), and among them, there will again

k k

be exactly one, say p + - J , such that P lies between x t p -[- *

inclusive and y^ = p + * -y~ exclusive. The interval J^ x l . . . y^

is again divided into 10 equal parts, and so on. If we imagine this process
continued indefinitely, we obtain a perfectly definite nest (J n ) all of whose
intervals J n contain the point P. No other point P' besides P can lie in all
the intervals J n . For, if that were so, all the intervals would have to con-
tain the whole stretch PP', which is impossible, as the lengths of the

intervals (j n has length J form a null sequence.

For every arbitrarily given point P on the number-axis (rational or
not) there are thus nests of intervals obviously, indeed, any number
of such nests which contain that point and no other. And in the
present instance, i. e. in the graphical representation on the number-
axis the converse appears most plausible; if we consider any nest
of intervals, there seems to be always one point (and by the reasoning
above, only this one) belonging to all its intervals, which is thus deter-
mined by it. We believe, at any rate, that we may infer this directly from
our conception of the continuity, or gaplessness y of the straight line 18 .

Thus in this geometrical representation we should have complete
reciprocity: every point can be enclosed in a suitable nest of intervals
and every such nest invariably encloses one and only one point.

This gives us a high degree of confidence in the adequacy of our
resolve to consider nests of intervals as numbers, which we now for-
mulate more precisely as follows:

13. Definition. We will say of every nest of intervals (J n ) or (x n \ y n ),
that it defines or, for brevity, it is, a determinate number. To represent



17 Instead of 10 we may of course take any other integer ^ 2. For furthei
detail, see 5.

18 The proposition, by which the "continuity of the straight line" is expressly
postulated for a proof cannot be here expected, since it is essentially a description
of the form of our concept of the straight line which is involved is called the
Cantor-Dedekind axiom.



3. Irrational numbers. 27

it y we use the symbol denoting the nest of intervals itself, and only as an ab-
breviation replace this by a small Greek letter, writing in this sense 19 , e. g.

(J n ) or (x n \y n ) - a.

Now, in spite of all we have said, this cannot but seem a very arbi-
trary step, the question has to be repeated most insistently: will it
pass without further justification? These purely ideal objects which we
have just defined these nests of intervals (or else that still extremely
questionable 'something' which such a nest encloses or determines) can
we speak of these as numbers? Are they after all numbers in the same
sense as the rational numbers, more precisely, in the sense in which
the number concept was defined by our conditions 4?

The answer can only consist in deciding, whether the totality or
aggregate of all conceivable nests of intervals, or of the symbols (/ n ) or
( x n \ yn) r <* introduced to denote them, forms a system of objects satis-
fying these conditions 4 20 ; a system therefore to recapitulate these
conditions briefly whose elements are derived from the rational numbers,
and 1. are capable of being ordered; 2. are capable of being combined
by the four processes (rules), obeying at the same time the fundamental
laws 1 and 2, I IV; 3. contain a sub-system similar and isomorphous
to the system of rational numbers; and 4. satisfy the Postulate of Eud-
oxus.

If and only if the decision turns out to be favourable, all will be
well; our new symbols will then have vindicated their numerical char-
acter, and we shall have established that they are numbers, whose
totality we shall then designate as the system or set of real numbers.

Now the decision in question does not present the slightest diffi-
culty, and we may accordingly be brief in expounding the details:

Nests of intervals or our new symbols (x n \ y n ) are certainly
constructed by means of rational number-symbols alone; we have there-
fore only to settle the points 4, 1 4. For this, we shall go to work in
the following way: Certain of the nests of intervals define a rational
number 21 , something, therefore, for which both meaning and mode of
combination have been previously established. We consider two such
rational- valued nests, say (x n \ y n ) s and (x n f \ y n ') = s'. With the two
rational number-symbols s and s', we can immediately distinguish whether
the first s is <, = or > the second s'; and we can combine the two by
the four processes of arithmetic. Essentially, what we have to do is to
endeavour directly to recognise the former fact, and to carry out the latter
processes, on the two nests of intervals themselves by which s and s' were



19 <7 is an abbreviated notation for the nest of intervals ( / n ) or (x n \ y n ).

20 The reader should here read these conditions through again.
81 We will describe such nests for brevity as rational-valued.



28 Chapter 1. Principles of the theory of real numbers.

given, and finally to extend the result to the aggregate of all nests of intervals.
Each provable proposition (A) relating to rational-valued nests will ac-
cordingly give rise to a corresponding definition (B). We begin by setting
down concisely side by side these pairs of propositions (A) and
definitions (B) 22 .

14. Equality: A. Theorem. If(x n \y n ) = 5 and (x n f \y n ') = s' are two
rational-valued nests of intervals, then s = s' holds if, and only if,
besides

*n ^ y n and x n ' <^ y n ' 9
we have 23



for every n.

On this theorem we now base the following:

B. Definition. Two arbitrary nests of intervals cr (# n |j> n ) and
a .= (x n f | y n ') are said to be equal if and only if



or every n.

Remarks and Examples.

1. The numbers x n and \ n ' on the one hand, y n and y n ' on the other, need
of course have nothing whatever to do with one another. This is no more sur-
prising than that rational numbers so entirely different in appearance as , g'A,
and 375 should be referred to as "equal". Equality is indeed something which



22 The import of proposition and definition should in each case be interpreted
in relation to the number-axis.

23 Into the very simple proofs of the propositions 14 to 19 we do not propose
to enter, for the general reasons explained on p. 2. They will not present the
slightest difficulty to the reader, once he has mastered the contents of Chapter II,
whereas at this stage they would appear to him strange; moreover they will serve
as exercises in that chapter. Merely as a specimen and example for the solution
of those problems, we will here prove Theorem 14:

a) If s = s' t then we have both x n ^ $ ^ y n and x n ' ^ s ^ y n ' y whence at
once, x n < y n ' and x n ' ^ y^ for every n.

b) If conversely x n 5$ y n ' for every n, then s ^ s' must hold. For if we had
s > s', i. e. s s' > 0, then, since (y n x n ) is a null sequence, we could so choose
the index p, that

y p - x p < s s/ r X P - s ' > y* - *

As however s is certainly ^ y p , this would imply x p s' > 0. We could therefore
choose a further index r for which

y/ - */ < * - s'.

Since x r ' ^ $', this would imply y r ' < x^ Choosing an integer m exceed-
ing both p and r, we could deduce, in view of the respective ascending and descend-
ing monotony of our sequences of numbers, that a fortiori y m ' < x m , which con-
tradicts the hypothesis that x n ^ y^ for every n. Thus s ^ $' is ensured.

By interchanging throughout the above proof the accented and non-accented
letters, we deduce in the same manner that if x n ' < y n for every n, then s' ^ s
If then we have both x n ' ^ y n and x n y n ' holding for every , then s ~ s
necessarily follows. Q. E. D.



3. Irrational numbers. 29

is not fixed a priori, but needs to be established by some form of definition, and
it i> perfectly compatible \vith marked dissimilarity in a purely external aspect.

2. The two nests I ^ 3 ) anc * *^ ~ are ct l ua l m accordance with
our present definition

3. By 14, we may write e. g. (s s -\- J = s --= (s \ s), the latter symbol
denoting a nest all of whose intervals ha\e both their left and their right endpomts



s. In particular, f



- (0 | 0) = 0.



w/

4. It still remains to establish but the proof is so simple that vve will not
go into it further that (cf. Footnote 23), in consequence of our definition, we
have a) a a (Footnote 24), b) a -= a' always implies a' = a, and c) a a 7 , a' a"
involve a = a".

Inequality: A. Theorem. If (x n \ y n ) = s and (x n f \ y n ') s' are 15
two rational-valued nests, then we have s < s', if and only if

x n ^ y n ' for every //, but not x n f 5^ y n for every ;/,

* e - y>n < x m f or <** feast one M.

B. Definition. Given any two nests of intervals a = (x n \ y n ) and
a (x n r | y n '), then we shall say a < o-', if

x n f y n ' for every ;/, but not x n ' ^ y n f or every n,
i. e. for at least one m, y m -- x m '.

Remarks and Examples.

1. It is clear that by 14 and 15 the totality of all conceivable nests is ordered.
For if a and a' are any two of them, either there is equality, a a 7 , or, for at least
one p, we have y v <* .Vj/, implying a < a 7 , or finally, for at least one r, y r ' < .v |f
implying a' < a. The last two cases cannot occur simultaneously, since, for m
greater than r and />, we should then have, a fortiori, v ?/ / <. v 7/1 ', which is impossible.
Thus between a ard a' one and only one of the three relations

always holds, and the totality of these new symbols is thus ordered by 14 and 15.

2. Here again it would have to be established in all detail that the laws of
order 1 continue to hold good with the adopted definitions of equality and in-
equality. Taking as model the proof in the footnote to Theorem 14, this presents
so few essential difficulties that we will not enter into it further: The laic* of order
do, effectually^ all remain valid.

3. In consequence of 14 and 15 we now have, therefore, for every n

A n < c y n .

What does this mean r It means that each of the rational numbers x n is, in ac-
cordance with 14 and 15, not greater than the nest a ~ (x n \ y n ). Or: if we con-

24 Here it may be clearly recognised that this "law" is by no means trivial:
it has indeed to be proved that with the given definition of equality every nest of
intervals is effectually "equal" to itself, that is to say that the conditions of that
definition are fulfilled, when the same nest is taken for both of the nests of intervals
which we are comparing.



30 Chapter I. Principles of the theory of real numbers.

sider any particular one of the numbers x n> say x p , and denote it for brevity by x,
then we may write (see 14, Rem. 3)

(v ;) -) x - x - -



x + f j or - (x | x)
and our statement takes the form

(*!*) <.!*,).

We may prove it as follows. If it were not true, then for at least one r,

y r < x, i. e. y r < x^
and so a fortiori, if m is greater than r and p y

y m < *m.

which certainly cannot be the case. In the same way we see that a < y n . Accord-
ingly, a is to be regarded as lyin^ between x n and y n for each n, in other word*, v con-
tained within the interval J n .

The fact that no other number a', besides a, can possess the same property
is now easily proved. If in fact there were a second nest of intervals a' - (\ n ' \ y n ')
such that for every definite index /> we also had x p ^ a' < y p , then the left hand
inequality means, more precisely (cf 3), that (v^ | v p ) r^ (v n ' | y n ') and so, by 14
and 15, x p ^ y n ' for every n. Since this must hold in particular for // p, we
deduce x 9 ^1 y v ' for every p, which signifies, by 14 and 15, that a ^ a'. In the
same manner the right hand inequality is seen to imply that a' jj <* Thus neces-
sarily a a', which was what we set out to prove.

4. By 15, a is > 0, i. e. "positive", if and only if (x n \ y n ) > (0 | 0), that is
to say, if for some suitable index p, x v > 0. But in this case, as the .v w f s increase
with n, we have a fortiori x n ^ for every n > p. We may therefore* say : a
(v n | y n ) is positive if, and only if, all the endpomts ,v w , y n are positive from and
after a definite index. The exact analogue holds of course for a < 0.

5. If or > 0, and, for every n ^ p, x n > 0, let us form a new nest (x n ' \ y n ')
= a' by putting x x\ . . . *V-i all equal to x p , but every other x n ' and
y n ' equal to the corresponding x n and y n . By 14, obviously a a'; and we may
say: If a is positive, then there are always nests of intervals equal to it, for which
all the endpoints of intervals are positive. The exact analogue holds for a < 0.

So far then, in respect of the possibility of ordering them, our nests
of intervals may be said to vindicate their character as numbers com-
pletely. It is no more difficult to establish a similar conclusion with regard
to the possibilities of combining them.

16. Addition: A. Theorem 2r> . If (x n \y n ) and (x n '\y n f ) are any two nests
of intervals, then (x n + # n '> yn + y n ') w also one, and if the former are both
rational-valued and respectively = s and = s\ then the latter is also rational-
valued, and determines the number s + s' '.

B. Definition. If (x n \ y n ) a and (x n f \ y n ') ~ &' are any two nests
of intervals and a" denotes the nest (x n + x n ', y n + y n ') deduced from them,
then we write

a" = a + a'

and a" ts called the sum of a and a'.



18 With regard to the proof, cf. footnote 23.



3. Irrational numbers. 31

Subtraction: A. Theorem. If (x n \ y n ) is a nest of intervals, then so 17.
is ( y n | x n ); and if the former is rational-valued s, then the latter
is also rational-valued, and determines the number s.

B. Definition. If a = (x n \ y n ) is any nest of intervals and a' de-
note the nest of intervals ( y n \ x n ) t we write

a' = -a

and say v is the opposite of cr. By the difference of two nests of inter-
vals we then mean the sum of the first and of the opposite of the second.

Multiplication: A. Theorem. If(x n \ y n ) and (x^ \ y n ') are any two 18.
positive nests of intervals, replaced, if necessary, (in accordance with
15, 5) by two nests of intervals equal to them, for which all the endpoints
of intervals are positive (or at least non-negative), then (x n x n r \y n y n ')
is also a nest of intervals; and if the former are rational-valued and respec-
tively s and = s', then the latter is also rational-valued, and determines the
number s s'.

B. Definition. If (x n \ y n ) a and (x n r \ y n f ) a are any two
positive nests of intervals for which all the endpoints of intervals are positive
which is no restriction, by 15, 5 and a" denote the nest (x n x n ' \y n y n ')
derived from them, then we write

a" = <T- a'

and call o-" the ^product of a and cr'.

The slight modifications which have to be made in this definition if
one or both of a and or' are negative or zero, we leave to the reader, and
henceforth consider the product of any two nests of intervals as defined.

Division: A. Theorem. // (x n \ y n ) is any positive nest of intervals 19.
for which all endpoints of intervals are positive, (cf. 15, 5) then so is ( J;

Vn x n'

and if the former is rational-valued, and = s, the latter is also rational-
valued, and determines the number -.

B. Definition. If (x n \ y n ) = a is any positive nest of intervals for

which all endpoints are positive, and a' denote the nest (-- ), then we

\y n xj

write



and say a' is the reciprocal of a. By the quotient of a first by a second
positive nest of intervals we then mean the product of the first by the reciprocal
of the second.

The slight modifications necessary in this definition, if a (in the one
case) or the second of the two nests of intervals (in the other) is negative,



32 Chapter I. Principles of the theory of real numbers.

we may again leave to the reader, and henceforth consider the quotient
of any two nests of intervals of which the second is different from 0, as
defined. If (x n \ y n ) a = 0, then the above method fails to produce
a "reciprocal" nest: division by is here also impossible.

The result of the preceding considerations is thus as follows: By
definitions 14 to 19, the system of all nests of intervals is ordered in the
sense of 4, 1, and admits of having its elements combined by the four
processes in the sense of 4, 2. In consequence of the theorems 14 to 19,
as stated in each case, this system possesses further, in the aggregate of
all rational-valued nests, a sub-system, similar and isomorphous to the
system of rational numbers, in the sense of 4, 3. It remains to show that
the system also fulfils the Postulate of Eudoxus. But if (x n \ y n ) = a and
( x n I yn) ~ v are an y two positive nests for which all endpoints of in-
tervals are positive (cf. 15, 5), let x m and y m f be a definite pair of these
endpoints; the theorem of Eudoxus ensures the existence of an integer
p, for which p x m > y m ', and the nest p a, or (p x n \ p y n ), in accordance
with 15, is then effectually > a'.

The next step should be to establish in all detail (cf. 14, 4 and 15,
2) that the four processes defined in 16 to 19 for nests of intervals obey
the fundamental laws 2. This again offers not the slightest difficulty and
we will accordingly spare ourselves the trouble of setting it forth 26 . The
Fundamental Laws of Arithmetic, and thereby the entire body of rules valid
in calculations with rational numbers, effectually retain their validity in the
new system.

By this, our nests of intervals have finally proved themselves in
every respect to be numbers in the sense of 4: The system of all
nests of intervals is a number-system, the nests themselves are numbers 27 .



26 As regards addition, for instance, it should be shown that:

a) Addition can always be carried out. (This follows at once from the defini-
tion.)

b) The result is unique; i. e. a a', T = T' (in the sense of 14) imply
a -f- r a 1 \- r' , if the sums are formed in accordance with 16 and the test
for equality carried out in accordance with 14. In the corresponding sense, it should
be shown further that

c) a + T = T -f- a always.

d) fe + a) + T = g -|- (o- + T) always.

e) a < a' implies a -\- T < a' 4* T always.

And similarly for the other three processes of combination.

27 Whether, as above, we regard nests of intervals as themselves numbers,
or imagine some hypothetical entity introduced, which belongs to all the intervals
J n (cf. 15, 3) and thus appears to be in a special sense the number enclosed by

the nest of intervals and, consequently, the common element in all equal nests
this at bottom is a pure matter of taste and makes no essential difference. The
equality a -- (x n \ y n ) we may, at any rate, from now on, (cf. 13, footnote 19) read
indifferently either as "a is an abbreviated notation for the nest of intervals (x n \ y n )" 9
or as "a is the number defined by the nest of intervals (x n \ y n )".



4. Completeness and uniqueness of the system of real numbers. 33

This system we shall henceforth designate as the system of real numbers.
It is an extension of the system of rational numbers, in the sense in
which the expression was used on p. 11, since there are not only rational-
valued nests but also others besides.

This system of real numbers is in one-one correspondence with
the whole aggregate of points of the number-axis. For, on the strength
of the considerations set forth on pp. 24, 25, we can immediately assert
that to every nest of intervals a corresponds one and only one point,
namely that common to all the intervals / n , which on account of the Cantor-
Dedekind axiom is considered in each case as existing. Also two nests of
intervals a and cr' have, corresponding to them, one and the same point,
if and only if they are equal, in the sense of 14. To each number cr (that
is to say, to all nests of intervals equal to each other) corresponds exactly
one point, and to each point exactly one number. The point corresponding
in this manner to a particular number is called its image (or representative)
point, and we may now assert that the system of real numbers can be uniquely
and reversibly represented by the points of a straight line.



4. Completeness and uniqueness of the system of real

numbers.

Two last doubts remain to be dispelled 28 : Our starting point in
3 was the fact that the system of rational numbers, by reason of its
"gaps", could not satisfy all demands which would appear in the course
of the elementary processes of calculation. Our newly created number-
system the system Z as we will call it for brevity is in this respect
certainly more efficient. E. g. it contains 29 a number a for which cr 2 2.
Yet the possibility is not excluded that the new system may still show
gaps like the old, or that in some other way it may be susceptible of still
further extension.

Accordingly, we raise the following question: Is it conceivable that
a system Z, recognizable as a number-system in the sense of 4, and con-
taining all the elements of the system Z, should also contain additional
elements distinct from these? *



28 Cf. the closing words of the Introduction (p. 2).

29 For if CT = (x n | y n ) denote the nest of intervals constructed on p. 20
in connection with the equation A? 3 = 2, then by 18 we have a a (x n 2 \ y n *). Since,
however, # n 2 < 2 and y n 2 > 2, it follows that a 2 = 2. Q. E. D.

80 I. e. Z would have to represent an extension of Z in the same sense as Z
itself represents an extension of the system of rational numbers.



34 Chapter I. Principles of the theory of real numbers.

It is not difficult to sec that this cannot be so, so that we have in
fact the following theorem:

20. Theorem of completeness. The system /, of all real numbers is in-

capable of further extension compatible with the conditions 4.

Proof: Let Z be a system which satisfies the conditions 4 and
contains all the elements of /. If a denote an arbitrary element of Z,
then 4, 4 in which we choose for ft the number 1, contained in Z,
and also, therefore, in Z shows that there exists an integer p > a,
and similarly another p' > a. For these 3l we have p' < a < p.
Considering successively the (finite number of) integers between p'
and />, starting with - />', we know that we must come to a last one which
is still ^ a. If this be called g, then



By applying to this interval g . . . g + 1 the method, already re-
peatedly used, of subdivision into ten parts, a perfectly definite nest of
intervals (x n \ y n ) is obtained. And a repetition word for word of the
proof in 15, 3 shows that the number thus defined can neither be > nor
< a. Every element of / is therefore equal to a real number, so that Z
can contain no elements other than real numbers.

A final objection might be this: We have succeeded in forming the
system Z in a comparatively natural, but after all an arbitrary, manner.
Other measures, obviously, might be adopted for filling up the gaps in
the system of rational numbers. (In the very next section we shall come
across other, equally ready means to this end.) It is conceivable that
a different method would lead to other numbers, i. e. to number-systems
differing, in more or less essential particulars, from the one constructed
by us. The question thus indicated may be given a precise formulation
as follows:

Let us suppose that we have somehow, starting with the system
of rational numbers, succeeded in constructing a system < of elements
which, besides still satisfying the conditions 4, as is the case with our
system Z, and therefore deserving the name of a number-system, also
fulfils a further requirement, usually referred to as the Postulate of
completeness, on account of the theorem proved above. On the
strength of 4, 3, ^ contains elements, corresponding to the rational numbers.
Let (x n | y n ) be any nest and let \ n and n be the elements of associated
with x n , y n in accordance with 4, 3; the stipulation then runs thus:
shall always contain at least one element # satisfying, for every n y the con-
ditions r n ^ cs ^ *) n .

In exact form, our problem is now: Can such a system <5 differ in



[ At this point, the Postulate of Eudoxus gains its axiomatic significance.



4. Completeness and uniqueness of the system of real numbers. 35

any essential particulars from the system Z of real numbers, or must the
two systems be regarded as substantially identical, in the perfectly definite
sense that they can be brought into relation as similar and isomorphous
to one another?

The theorem stated below, by solving this problem in the sense
which we should anticipate, closes the construction of the system of real
numbers.

Theorem of Uniqueness. Every such system & is necessarily similar 21.
and isomorphous to the system Z of real numbers as constructed by us. Essen-
tially, only one such system therefore exists.

Proof. By 4, 3, contains a sub-system <', which is similar and
isomorphous to the system of rational numbers contained in Z, and whose
elements may therefore be called, for short, the rational elements of ^
If a (x n \ y n ) is any real number, 5 rnust, according to our new stipula-
tion, contain an element a, which for every n satisfies the conditions
in ?? * ^ Wn if \ n and \j n are the elements of S corresponding to the
rational numbers x n and y n .

Also, these conditions define g uniquely. For if a second element
/, simultaneously with *, satisfied the conditions \ n ^ $ <* \^ n for every
, then it would follow, word for word as in the proof of 12, that for
every n



i. e. ^ the non-negative one of the two elements & $' and $' .
Let r stand for an arbitrary positive rational number, and i for the cor-
responding element in > (therefore in 5'); then, on account of the similarity
and isomorphism of >' with the system of rational numbers, we must
have, simultaneously with y p x p < r, the relation \j p r^ < v holding
for a suitable index p. For every such r therefore



If therefore tj denotes one particular such i and if r n , n = 1, 2, . . . ,
denotes the element (certainly present in >', by 4, 2) which, when repeated
n times, yields the sum r lf we see, after writing down the above inequality
for r = v n and adding it to itself n times, that for every n = 1, 2, . . . ,

n | d $' | ^ t!

must also hold. Since, however, satisfies the postulate 4, 4, it follows
that = *'.

If we proceed to associate this uniquely defined clement g and
the real number cr, it becomes clear that contains a sub-system 5* $
similar and isomorphous to the system /, of all real numbers. That
such a system 5* is n t susceptible of further extension compatible



36 Chapter I. Principles of the theory of real numbers.

with the conditions 4, but must be identical with c ij), was the import
of the previously established theorem of completeness. Thereby, it is
proved that 5 an d %, arc similar and isomorphous to one another,
and therefore may be regarded, in all essentials, as identical: Our system
Z of all real numbers is in all essentials the only one possible satisfying both
the conditions 4 and the postulate of completeness.

After these somewhat abstract considerations, the main result of our
whole investigation may be summarised as follows:

Besides the rational numbers with which we are familiar, there exist
others, the so-called irrational numbers. Each of them may be enclosed
(determined, given, . . .) by a suitable nest of intervals and this indeed
in many ways. These irrational numbers fit in consistently with the
rational numbers, in such a manner that the conditions stated in 4 are
fulfilled by the joint system of all rational and irrational numbers, with
which, to be brief, all calculations may be effected, formally^ exactly as
with the rational numbers alone, but with greater success.

This wider system is moreover incapable of any further extension
compatible with conditions 4, and is in all essentials the only system of
symbols which satisfies these conditions 4 and also the postulate of com-
pleteness.

We call it the system of real numbers.

It is with the elements of this system, with the real numbers \ that
we work (at first exclusively) in the sequel. We consider a particular
real number as given (known, determined, defined, calculable, . . .) if
either it is a rational number and so can be literally written down with
the help of integers inserting if need be a fractional bar or a minus
sign or (and this holds in any case) we are given 32 a nest of intervals
defining the number.

We shall very soon see, however, that many other ways and means,
besides the nests of intervals, exist, for defining a real number. In pro-
portion as such ways become known to us, we shall widen the above-
mentioned conditions, under which we consider a number as given.



32 I. e. by the complete explicit specification of the (rational) endpomts in
the manner just described*



5. Radix fractions and the Dedekind section. 37



5. Radix fractions and the Dedekind section.

A few of the methods for defining real numbers may be mentioned
at once, as particularly important from the points of view of both theory
and practice.

In the first place, a nest of intervals need not always be given in
the form (x n \ y n ) considered by us ; it may often be written in a more
convenient form. Thus, as we have already seen, a decimal fraction,
e.g. 1-41421 . . . , may be immediately interpreted as a nest of intervals,
with the assumptions

1 =l-4; #a=l-41; ar 3 = 1-414; ...,

and, generally, x n equal to the decimal fraction broken off after the
if" 1 digit; y n being derived from x n by raising the last digit by one,

i.e. y n -- x n -f- 1( y w - Practically, we may thus say that decimal fractions

represent a peculiarly clear and convenient specification of nests of
intervals 33 .

It is obviously quite an unessential part that the base or radix 10
of the ordinary scale of notation plays in this connection. If g is any
integer ^ 2, we have the exact analogue for fractions in a scale of
radix g or radix fractions with base g. To begin with, given a real
number o-, an integer p (>, =, or < 0) is uniquely defined by the
condition

p^cr <p |-1.

The interval y o between p and p -f- 1 is next divided into g equal
parts, and each of these parts considered both hero and similarly
in the following steps as including its left endpoint, but not its
right one. Then cr belongs to one, and to one only, of these parts,
i. e. among the numbers 0, 1, 2, . . . , g I there is one and
only one which we shall call for brevity a "digit" and denote by
#! for which



33 The drawback to it is that we can seldom perceive the law of succession
of the digits, i. e the law of formal ion of the .v w 's and >' n 's.



38 Chapter I. Principles of the theory of real numbers.

The interval / x thus defined we proceed to divide again into g equal parts,
and a will, as before, belong to one, and to one only, of these parts, i. e.
a definite "digit" x 2 will be found for which



The interval / 2 thus defined we proceed to divide again into g equal parts,
and so on. The nest of intervals (/ n ) = (x n \y n ) determined by this pro-
cess, for which



* 4- f 4- 4- --"=* 4-
g + g * + --- + gn - l +



z n

(n = 1, 2, 3, . . .)



clearly defines the number cr, so that M a (# | jy w ). But on the analogy
of decimal fractions we may now write

o ---- p I O-*! .

where of course the base g of the radix fraction must be known from
the context.

We have therefore the

22. Theorem 1. Every real number can be represented in one and essen-
tially only one 35 way by a radix fraction in the scale of base g.

We mention the following theorem relating further to this represen-
tation, but shall make no use of it in the sequel:

Theorem 2. The radix fraction for a real number a whatever be



31 That we have a nest of intervals is immediately obvious, since x n _ 1 <
X n <*" y n ^ y n _ 1 throughout, and y n v n - n forms a null sequence, by 10, 7.

r> The slight alteration in our method, required if all the intervals are con-
sidered as including their right and not their left endpomts, the reader will doubtless
be able to carry out for himself. The two results differ if, and only if, the given
number a is rational, and can be written as a fraction having, as denominator, a
power of g t so that the point a is an endpoint of one of our intervals. Actually
the two nests of intervals

p -f 0-afi ar, . . . * r _i (~r ~ J ) (g - 1) (# - 1) and / -I- O^ ar t . . . *,._, z r 00 . . . ,

where the digit z r is supposed ^ 1, are equal by 14. In every other case, two radix
fractions which are not identical are unequal, by 14. The reader will easily prove
for himself that, except m this case, the representation of any real number a as
a radix fraction with base g is absolutely unique.



5. Radix fractions and the Dedekind section. 39

the chosen radix g 2g 2 will prove periodic (or recurring) if and only if
a is rational**.

A particularly advantageous choice to make is often g = 2 ; the pro-
cess for expressing the number a is then called briefly the method of
bisection and the resulting radix fraction, whose digits can in that case
only be or 1, is called a binary fraction. The method, in a somewhat
more general light, is this: we start from a definite interval / and, in
accordance with some particular rule or point of view, definitely select
one of its two halves, calling it J\ we then again make a definite choice
of one of the two halves of y lf calling it / 2 ; and so on. By so doing, we
specify, in every case, a well-defined real number, determined with ab-
solute uniqueness by the method which regulates at each stage the choice
between the two half- intervals 37 .

In radix fractions, just as in decimal fractions, we accordingly see
a peculiarly clear and convenient mode of specifying nests of intervals.
They shall accordingly in future be admitted for the definition of real
numbers on the same footing as decimal fractions.

The distinction lies somewhat deeper between nests of intervals and
the following method of definition of real numbers.

We suppose given, in any particular way as , two classes of numbers
A and B, subject to the following three conditions:

1) Each of the two classes contains at least one number.

2) Every number of the class A is 5^ every number of the class B.

3) If an arbitrary positive (small) number e is prescribed, then two
numbers can be so chosen from the two classes, a ', say, from A and
b', say, from B, that 39

b' a < e.

Then the following theorem, holds :



30 Here for simplicity we regard terminating radix fractions as periodic with
period 0. That every rational number can be represented by a recurring decimal
fraction was proved by J. Walhs, De Algebra tractatus, p. 3<>4, 1G ( J3. That conversely
every irrational number can always, and in one way only, be represented as a non-
recurring decimal fraction was first proved generally by O. Stolz (Allgememe Anth-
metik I, p. 119, 1885).

37 An example was given in 12, 2.

88 E. g. A contains all rational numbers whose cube is < 5, B all rational
numbers whose cube is > 5.

30 \y e sav f or s hort: the numbers of the two classes approach arbitrarily
near to one another. In the example of the preceding footnote, we see at once that
conditions 1) and 2) are satisfied; that 3) is also satisfied we recognise from the
possibility of calculating (by the method of partition into tenth parts, for instance)
two decimal fractions ,v n and y n with n places of decimals, differing only by a unit

in the last place, and such that x n 3 < 5, y n * > 5; n being so chosen that , ( . n < e.



40 Chapter I. Principles of the theory of real numbers.

Theorem 3. There exists one and only one real number a such that
for every number a in A and every number b in B the relation

a-^v^b
is always true.

Proof. It is again obvious that no two different numbers cr, <r'
with this property can exist. For putting | a a' \ r, we should have
> 0, yet b a ^ c for every pair of elements a and b from A and B
respectively, contrary to condition 3.

There exists then at most one such number a. We find it in the
following way: By hypothesis, there is at least one number a l in A and
one number b in B. If a = 6 X , then the common value is manifestly
the number a which we are in search of. If a l 4= b ly and therefore by
2), a l < b ly then we choose two rational numbers x l f^ a ly and y ^ b l
and apply the method of bisection to the interval / l which they deter-
mine; we denote the left or right half by / 2 , according as the left half
(endpoints included) does or does not still contain a point of the class B. By
the same rule we next select one of the halves of / 2 , calling it / 3 , and
so on.

The intervals / 1? / 2 , . . . , ./, . . . , being obtained by the method of
bisection, necessarily form a nest

( A) = (x n I y n ) = *

From their mode of formation, they possess moreover the property that
no number of B can lie to the left of any of their left endpoints, and no
number of A to the right of their right endpoints.

But from this it follows at once that the number a enclosed by them
is the number required by theorem 3. In fact, if, contrary to the assertion
in that theorem, a particular number a of A were > cr, so that a a > 0,
then we could choose from the succession of intervals J n a particular one,
sa Y /i> -~ X P ypy Wlt h length < a a. Since x v 5g a ^ y p , this would
imply

y p or <; y 9 x v <. a a, i. e. y 9 < a,

whereas, actually, no point of A lies to the right of the right endpoint
y p of y p . If on the other hand, in any instance, b < cr, it would similarly
follow that for a suitable index q, b < x qy whereas actually no point of
B lies to the left of the left endpoint of an interval J q . Hence we must in-
variably have a ^ u fg b. Q. E. D.

As a special corollary, we have the following theorem, which sup-
plements Theorem 12, forming an extension of it to the case when the
numbers there occurring are arbitrary real numbers. In the formulation,
we anticipate the obvious definitions 23 25 of next paragraph.



5. Radix fractions and the Dedekind section. 41

Theorem 4- If (x n ) is a monotone ascending, and (y n ) a monotone des-
cending, sequence of (any) real numbers ; //, further, x n <^ y n for every n,
and the differences y n x n d n form a null sequence-, then there is invariably
one and only one real number a, such that for every n



We then say, as before (cf. Definition 11), that the two given sequences define
a nest of intervals (x n \ y n ) and that a is the number which it (uniquely) deter-
mines.

Proof. If with all the left endpoints x n we constitute a class A,
and with all the right endpoints y n a class #, of real numbers, these clearly
satisfy conditions 1) to 3) of Theorem 3, from which the correctness of
the above statement at once follows.



Remarks and Examples?.

1. Instead of 3), it is often more convenient to stipulate that e.g. every
rational number should belong either to A or to B (as \\as the case in the
example of last footnote). In fact, in that case, since rational numbers arc
dense on the number axis, the requirement 3) is fulfilled of itself. To see this,
we have only to imagine the \\hole number-axis subduidcd into equal portions of
length < e/2. Now consider any one of the portions containing an element from
A, and, to the right of it, take another portion containing an element from B , together
with these two portions, take the finite number of portions, if any, between them.
One of these considered portions must be the first of them to contain an element
b from B. Either this particular portion, or the preceding one, will contain an element
a from A, and we have b a ^ .

2. It is often still more convenient to divide till real numbers into tsvo classes
A and B. In that case of course 3) is, a fortion, also satisfied of itself.

3. If the two classes A and B are given in one of the last-mentioned ways,
then we say that a Dedekind section, is made in the domain of either rational or
real numbers, as the case may be 10 . The someuhat more general specification of
two classes ll involved in our theorem 3 \\i\\ also for brevity be termed a section
and denoted by (A \ B). Our theorem 3 can then be stated briefly in the form:
A section (A \ B) invariably defines a determinate real number. And its proof consists
simply in pointing out that the specification of a section carries with it the speci-
fication of a nest of intervals, which furnishes a number a with the properties required.

4. Seeing then that every section immediately provides a definite nest of
intervals, we shall henceforth regard sections as permissible means of defining
(determining, specifying, . . .) real numbers; also, we now write, if the section
(A | B) defines the number a,

(A\B) a.



40 Cf. p. 1 , footnote 0.

41 This was given in the above form by A. C\it>elli % Giornale di Matematici,
Vol. 35, p. 209, 1897.



42 Chapter I. Principles of the theory of real numbers.

5. The converse is of course equally true and even more easily proved. Given
a nest (x n \ y n ) = cr, we can consider all left endpoints x n as forming a class A,
and right endpoints a class B, and these two classes evidently furnish a section, which
defines the same numher a as the nest itself. A nest can accordingly be regarded
as a particular kind of section.

(>. By our last remark, the method of sections (for the definition of real
numbers) is superior in generality to that of nests. It is also quite as convenient
from the intuitional point of v lew. For if we take, say, the section (A \ B) in the
somewhat more special form, mentioned in 2, of a section in the domain of real
numbers, then what our theorem implies is this. If we imagine all points of the
number-axis separated into two classes A and B, thinking e. g. of points of the
one class as marked black and those of the other as white; and if, when this is
done, (I) there is at least one point of each kind, (2) every black point lies to the
left of every white point, and (3) every point on the number-axis is effectually
coloured either black or \\hite, then the t\\o classes must come into contact at a
perfectly definite place, and to the left of this place all is black, to the right of it all
is \\hite.

7. We must take care, however, not to accept the illustration just given as
a proof. Had we not already with the help of nests of intervals invented the class
of real numbers, our theorem could not be proved at all any more than it could
be proved that every nest defines a number. We simply agreed and were amply
justified by the result to regard every nest as a number. In exactly the same
way we can agree and this is actually the course followed by JR. Dedekmd 42
in his construction of the system of real numbers to regard every section in the
domain of rational numbers as a "real number" , and we should then, exactly as
in our investigations in 3, only have to examine whether this is permissible; i. e.
we should have to make sure whether the totality of all such sections (A \ Z?) forms
a number system in the sense of conditions 4 which is not more difficult than
the analogous investigations carried out in 3.

Henceforward and for the present exclusively real numbers
form our working material. We may even, if we please, drop the word
"real": For the present, "number" shall invariably mean a real number.



Exercises on Chapter I.

1. From the fundamental laws 1 and 2 deduce the most important of the
further arithmetical rules, e. g. (a) the product of two negative numbers is positive;
(b) a .+ c < b + c invariably implies a < b ; (c) for every a we have a -= ;
etc.

2. When in 3, II, 4 are the signs of equality correct?

3. Express the following numbers as binary and as ternary fractions (i. e.
in scales of notation of which the bases are respectively 2 and 3) :

1 3 1 1 10
2' 8' TV 7' 17 ;

find the first few figures of the binary and ternary fractions for V2, V3, ir and e.
42 Stetigkeit und irrationale Zahlen, Brunswick 1872,



6. Arbitrary sequences and arbitrary null sequences. 43

a n __ an

4. In the sequence 6, 7 prove x n o t where a and ft are the roots

of the quadratic equation x 2 x -f- 1. (Hint: the sequences (a n ) and ()3 W ) have
the same law of formation as the sequence 6, 7.)

5. Form the sequence (v n ) of numbers given, for \: 1, by the formula

.v nfl ---= ax n -| A \ n _,,

where a and A are given positive numbers and the initial terms #, x l 0, 1 ; 1, 0;
-- 1, a; 1, j3; or are arbitrary. (Here a and j3 denote respectively the positive
and the negative root of the equation x 2 a x -}- b ) In each of the four cases
give an explicit formula for x n .

6. If / , /!, / 2 , ... is a sequence of nested intervals (i. e. each contained
in the preceding) about whose lengths nothing further is known, then there is at
least one point which belongs to all the / n 's.

7. A real number or is irrational, if we can find an ascending sequence of
integers (<y n ), such that q n a is not an integer for any H, but if, \\hcn p n stands for
the integer nearest to q n a, ( f fn a Pn) 1S a null sequence.

8. Prove that (v n | y n ) is a nest in each of the following examples:



n , .....

b) < A:, < 3-, and for every n ^ 1, v nfl *'r n y n , v n H -- } (V M -f- .v n );

c) < x, <- v, , v nM - i (v w f Vn). y n +i ~ VY M .v w :

d) ^ Xt <>'! ,>' wf i - 1 (x n i V n ), V/M r v/ ^ v n 3' w 1 1 J

e) < .Y! < >'! ,. , A W -H - ^v n .v n , 3'n+i = 2 (v nf i + y n );



g) < v, < Vi ,3'nM i (V w h 3' w ), V, H _, -- Vw '' Vw .

3'w+i

Evaluate the numbers defined in examples (a) and (g). (Cf. problems 91
and 92.)
-/
