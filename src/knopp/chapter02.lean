/-

Chapter II. 

Sequences of real numbers. 

6. Arbitrary sequences and arbitrary null sequences. 

We now resume our considerations of 2, and generalise them 
by allowing all the numbers which there occur to be arbitrary real numbers. 
Since, with these, we may operate precisely as with rational numbers, 
both the definitions and the theorems of 2 will, in all essentials, remain 
unchanged. We may accordingly be brief. 



44 Chapter II. Sequences of real numbers. 

23. Definition 1 . If to each positive integer 1, 2, 3,..., corresponds 

a definite real number A:,,, then the numbers 



are said to form a sequence. 

Examples 6, 1 12, may, of course, also serve here. Similarly, the Remarks 
7, 10 retain full validity. We give a few more examples, in which it is not im- 
mediately apparent whether the numbers in question are rational or not. 



Examples. 

1. Let a 0,:W10 . . . , i. e. equal to the decimal fraction whose first few 
digits were obtained in a footnote (p. 24) from the equation 10 l 2; and put 

x n -~= a n for n =-- 1, 2, ;}, . . . 

2. With the same meaning for a, let x n = 

3. Apply the method of .successive bisection to the interval / ... 1, 
taking first the left half, then twice running the right half, then for the next three 
steps again the left half, then four times running the right half, and so on. Denote 
the number 2 so defined by 6 (\\h\t is its value, approxim itely 5 ), and put foi x n , 
successively, 

+*,-*,+;, -j, +*, -*, +i. -;, -i *.... 

4. With the same meaning for b, put for x n , successively, 

1 - b, 1 + b, 1 - b*, 1 | b\ 1 - b\ 1 + 6 3 , . . . 

5. W T ith the same meaning for a and 6, let v t b'j the middle point of the stretch 
between them, i. e. x l J (a f 6); x z the middle point between je t and 6, # 3 , 
that between * 2 and a, x 4 , that between #, and b; i. e. generally, x n+l , the middle 
point between x n and either a t or b y according as n is even or odd. 

Definitions: 1. A sequence (x n ) is said to be bounded if a constant 
K exists, such that the inequality 



is satisfied for every n. 

2. A sequence (x n ) is said to be monotone increasing if x n 5^ x n+l for 
every n\ monotone decreasing, if x n ^ x n+1 for every n. 

All remarks made in 8 and 9 retain their full validity. 



1 For the meaning of the mark cf. the preface, as also later the beginning 
of 52. 

2 Written as a binary fraction, 6 ^ 01 10001 1 1 10 ... 




6. Arbitrary sequences and arbitrary nyjl sequences. 45 

Examples. 

1. The sequences 23, 1, 2, 4 and 5 are evidently bounded. Sequence 3 is 
not bounded, and in fact neither on the left nor on the right; for we certainly have 

< 6 < - and therefore , ^ > 2 m > m, and accordingly ,- < m. Terms 

of the sequence may therefore always be found, which are > K or < K y how- 
ever large the constant K is chosen. For 5, the boundedness follows from the 
fact that all the terms lie between a and b. 

2. The sequences 23, 1 and 2 are monotone decreasing: the others are not 
monotone. 

The definition 10 of a null sequence and the appended remarks 
which the student should read through again carefully also remain 
unchanged. 

Definition. A sequence (x n ) shall be termed a null sequence if, 25. 

subsequently to the choice of an arbitrary positive numbers, a number n Q = n (e) 
may always be assigned, such that the inequality 3 



is fulfilled for every n > . 



Examples. 



1. The sequence 23, 1 is a null sequence, for the proof 10, 7 is valid for any 
real a, for which | a \ < 1. 

2. 23, 2 is also a null sequence, for here | x n \ < , therefore < e, provided 

. 1 n 

n > . 

e 

For null sequences these will later on play a dominating part 
a number of quite simple theorems, which will be continually applied in 
the sequel, will also be proved here. The following two, in the first place, 
are obvious enough: 

Theorem 1. If (x n ) is a null sequence and the terms of the sequence 26. 
( x n')> f or w er y n beyond a certain value m, satisfy the condition \ x n f \ ^ | x n \ 9 
or, more generally, the condition 

\ Xn '\^K-\x n \, 

in which K is an arbitrary (fixed) positive number, then x n ' is also a null 
sequence. (Comparison test.) 



3 Given any positive real number e, a positive rational number e' < e can be 
designated; in fact, by the fundamental law 2, VI, we can find a natural number 

n > , and e' satisfies the requirements. From this it follows that, for rational 

sequences, the above definition is equivalent to the definition 10, in spite of the. 
fact that only rational e were allowed there. 



46 Chapter II. Sequences of real numbers. 

Proof. If the condition | x n ' \ ^ K \ x n \ is satisfied for n > m 
and e > is given, then by the assumptions we can assign H O > m, so 

that for every n > n Q , | x n \ < . Since for these values of n we then 

/C 

also have | x n ' \ < , (x n f ) is therefore a null sequence. 

The following theorem is only a special case of the preceding: 

Theorem 2. If (x n ) is a null sequence, and (a n ) any bounded sequence, 
then the numbers 

x n f = a n x n 
also form a null sequence. 

On account of this theorem we say for short: A null sequence "may 1 * 
be multiplied by a bounded factor. 



Examples. 

1. If (x n ) is a null sequence, 

io* lf fa 10*3, fa 10 * 6 ... 

is also a null sequence. 

2. If (x n ) is a null sequence, so is (| x n |). 

3. A sequence, all of whose terms have the same value, say c, is certainly 
hounded. If (x n ) is a null sequence, (c x n ) is therefore also a null sequence. In 

particular, f-J, (c a n ) for | a \ < 1, etc. are null sequences. 
The next propositions are less obvious: 

27* Theorem 1. If (x n ) is a null sequence, then every sub-sequence (x n f ) 
of (x n ) is a null sequence 4 . 

Proof. If, for every n > n , | x n \ < z, then we have, ipso facto, 
for any such n, 



since k n is certainly > , when n is. 

Theorem 2. Let an arbitrary sequence (x n ) be separated into two 
sub-sequences (x n f ) and (x n "), so that, therefore, every term of (x n ) belongs 
to one and only one of these sub-sequences. If (x n ') and (x n ") are both null 
sequences, then so is (x n ) itself. 



4 If ki < k 2 < k 3 < . . . < k n < . . . is any sequence of positive integers, then 
the numbers 

x n ' = x kn (n = 1, 2, 3, . . .) 

are said to form a sub-sequence of the given sequence. 



6. Arbitrary sequences and arbitrary null sequences. 47 

Proof. If a number e > be chosen, then by hypothesis a num- 
ber n exists, such that for every n > n, |# n '| < <e, and also a num- 
ber n" y such that for every n > w", | #"!< ^ nc terms # n ' with 
index <^ n' and the terms # n " with index <Ln", have definite places, 
i. e. definite indices, in the original sequence (x n ) . If n Q is the higher 
of these indices, then for every n > M O , obviously | x n \ < e, q. e. d. 

Theorem 3. // (# n ) is a null sequence and (x n ') an arbitrary 
rearrangement* of it, then (x n ') is also a null sequence. 

Proof. For every n > w , | x n \ < e. Among the indices belong- 
ing to the finite number of places which the terms x lt # a , . . ., x n 
occupy in the sequence (# n '), let ri be the largest. Then obviously, 
for every n > n', |# n '| < e; hence (x n f ) is also a null sequence. 

Theorem 4. // (x n ] is a null sequence and (x n ') is obtained from 
it by any finite number of alterations*, then (x n f ) is also a null se- 
quence t. 

The proof follows immediately from the fact, that for a suitable 

integer />^0, from some n onwards we must have x n ' = x n+ . For 
if every x n for n ^> n l has remained unchanged, and #, ?1 has received 
the index n f in the sequence (x n ')> then in point of fact for every 
n > ri, 



if we put p = Wj n 

Theorem 5. // (x n ') and (x n ") are two null sequences and if the 
sequence (# n ) is so related to them that from a certain m onwards 



then (x n ] is also a null sequence. 

Proof Having chosen e > 0, we can chose n >> m so that, for 
every n > n Qt e < x n ' and a? n " -< + e. For these ris we then have, 
ipso facto, e < x n < + , that is | x n \ < e', q. e. d. 



6 If ki t k 2 , . . , fe n , ... is a sequence of positive integers such that every in- 
teger occurs once and only once in the sequence, then the sequence formed by 



is said to be a rearrangement of the given sequence. 

6 We will describe this concept as follows: If we alter any sequence, by 
omitting, or inserting, or changing, a finite number of terms (or by doing all three 
things at once), and then renumber the altered sequence, \vithout changing the 
order of the terms left untouched, so as to exhibit it as a sequence Cv rt '), then >\e 
shall say, (x n ') is obtained or has resulted from (x n ) by a finite number of alterations. 

7 It is precisely because of this theorem that one may say of a sequence that 
the property of being a null sequence concerns only the ultimate behaviour of its terms 
(cf. p. 10). 



48 Chapter 11. Sequences ot real numbers. 

Calculations with null sequences, finally, are founded on the 
following theorems: 

88. Theorem 1. // (x n ) and (x n ') are two null sequences, then 



i. e. the sequence whose terms are the numbers y n = x n -f- x n ', is also 
a null sequence. Briefly. Two mill sequences "may" be added term 
by term. 

Proof. Ife>0 has been chosen arbitrarily, then by hypothesis 
(cf. 10, 4 and 12) a number n 1 and a number w 2 exist such that for every 

n > !, | x n | < ?, and for every n > 2 , | x n ' \ < . If w is a number 
2i & 

? //! and 2g 2 then for n > n Q 

I y n \ = I *. + *.' I = I * I + 1 *' I < I + g = * 

(y n ) is therefore a null sequence 8 . 

Since, by 26, 3 (or 10, 5), ( a?/) is a null sequence if fa^') is, 
(y n ') = (x n as n ') is then by the above also a null sequence, i. e. we 
have the theorem- 

Theorem 2. // (a? n ) and (x n ') are null sequences, then so is 
(y n ') == (x n x n '). Or briefly: null sequences "may" be subtracted term 
by term 

Remarks. 

1. Since we may add two null sequences term by term, we may also do 
so with three or any definite number of null sequences. For supposing this prov- 
ed for (p I) null sequences (a^ 1 ), (#")> > (&%* ~ X) ) , i. e. supposing the 
sequence 



to be already recognised as a null sequence, Theorem 1 ensures that the 
sequence (x n ), for which 



is also a null sequence. The theorem thus holds for every fixed number of null 
sequences. 

2. That two null sequences "may" also be multiplied term by term, is 
immediately clear from 26, 1, since null sequences, by 10, 11, are necessarily 
bounded. 

3. Term by term division t on the contrary, is in general not allowed, as 

is already obvious, for instance, from the fact that when x n =}= 0, is con- 

Xn 

11 x 

stantly = 1 . If we take x H *= 9 xJ = = , then the ratios ~ do not even pro 

n n* x m f 

vide a bounded sequence. 



8 For the last inequality 3, II, 4 is used. 



7. Powers, roots and logarithms. Special null sequences. 49 

4. In the case of other sequences (x n ) also, little can be said in the first 

instance about the sequence ( ) of the reciprocal values. The following is 

\x n / 

an obvious, but often useful theorem: 

o Theorem 3. // the sequence (\ x n \) of absolute values of the terms of (x n > 
have a positive lower bound, if, therefore, a number y > exists, such that for 
every n, 



then the sequence { ) of reciprocal values is bounded. 
\x n J 

In fact, from | x n | > y > it at once follows that for K = we have 

<K 

x n 

for every n. 

In order to increase the scope both of the application of our con- 
cepts and of the construction and solution of examples, we insert P. 
paragraph on powers, roots, logarithms and circular functions. 

7. Powers, roots and logarithms. Special null sequences. 

As, in the discussion of the system of real numbers, it was not 
our intention to give an exhaustive treatment of all details, but lather 
to put fundamental ideas alone in a clear light, assuming as known, 
thereafter, the body of arithmetical rules and concepts, with which 
after all everyone is thoroughly conversant, so here, in the discussion 
of powers, roots and logarithms, we will restrict ourselves to an exact 
elucidation of the basic facts, and then assume known the details of their 
application. 

I. Powers with integral exponents. 

If x is an arbitrary number, we know that the symbol x k for positive 
integral exponents k ^ 2 is defined as the product of k factors, all equal 
to x. Here we have therefore only another notation for something we know 
already. By x 1 we mean the number x itself, and if x =}= 0, it is convenient 
to agree, besides, that 

x represents the number 1, x~* the number -^ (k = 1, 2, 3, ...y, 

so that x 9 is defined for every integral p^O. For these po \\crs* 
with integral exponents, we merely emphasize the following facts: 

1. For arbitrary integral exponents p and q ($0) the three 29. 
fundamental rules hold: 



* x p is a power of base x and exponent p. This continental use of the 
word power cannot be here dispensed with, in spite of the slight ambiguity 
resulting- from by far the most frequent use of the word in English to designate 
the exponent. This sense should be entirely discarded from the reader's mind, 
notably for 35, 2 a and others. (Tr.) 



50 Chapter TI. Sequences of real numbers. 

from which all further rules may be deduced, which regulate calcu- 
lations with powers . 

2. Since, in a power with integral exponent, merely a repeated 
multiplication or division is involved, its calculation has of course to 
be effected by 18 and 19. If therefore x is positive and defined 
for instance by the nest (x n \y n ), with all its endpoints ^> (cf. 15, 5), 
then we have simultaneously with 

-fcJyJ' x * = ( xk n \y k n) at once > 

for all positive integral exponents: and similarly with appropriate 
restrictions for x <^ or k <I o . 

3. For a positive x we have furthermore 



according as xl 

as we at once deduce from #^1, if we multiply (v. 3, I, 3) by x". 
And quite as simply we find: 

If x^ y a; a and the integral exponent k are positive, then 

x*^x according as a^^Sg. 

4. For positive integral exponents n and arbitrary a and 6 we 
have the formula 



+ (n\ n-lt -ik i I fn\ jn 

(*)* b H t-y*. 

where [? ) , for l^Lk^n, has the meaning 
R 



fn\ _ n (n - 1) (n - 2) . . . (n - fe-f 1) 
W 1 - 2 3 ... k 

and (Q] will be put=l. (Binomial Theorem.) 



II. Roots. 
If a be any positive real number, and k a positive integer, then 



shall denote a number whose & th power = a . What interests us here 
is solely the existence question: Is there such a number, and to what 
extent is it determined by the problem thus set? 
This is dealt with in the 



9 In this, the value for the base x or y is only admissible if the cor 
responding exponent is positive. 



7. Powers, roots and logarithms. Special null sequences. 51 

Theorem. There is, invariably, one and only one positive number f 30. 
satisfying the equation ft = * (a > o) 



IP - 



- 
We write g = y and call { the & th root of a. 

Proof. One such number may immediately be determined by a 
nest of intervals, and its existence thereby established We use the 
decimal-section method. Since 0* = < a, but, p denoting any positive 
integer > a, p 16 ^ p > a , there is one and only one integer g ^> 

for which 10 k . , , . fc 

g ^<(g+1) 

I he interval / determined by g and (g -f- 1) we divide into 10 equal 
parts and obtain, in the manner now repeatedly worked out, a defi- 
nite one of the digits 0, 1, 2, . .., 9, which we may denote, say, by z v 
and for which 



and so on, and so on. We therefore obtain a nest of intervals 
(^J = (x n | y^ whose endpoints have definite values of the form 



and 

v a -L * -L- **--] _____ L **-_ J_ ? 1 

y n 6 i jo ^ 10 2 r ~r 10 ,,_i r 10 

If f = (aj^ | yj be the number thereby determined, then since here all 
endpoints of intervals are ^> 0, it at once follows by 29, 2 that 



But, by construction, x k <^a <^y k for every n, hence, by 5, Theorem 4, 

we must have ,. 

* = *. 

That this number f is, moreover, the only positive solution of the 
problem, follows directly from 29, 3, since it was there pointed out 
that for a positive ^ ={=, necessarily f* 4 s *> i e. 4=^- 

If & is an even number, then is also a solution of the 
problem. We shall not, however, take this into account in the follow- 
ing pages, but interpret the th root of a positive number a as 
meaning only the positive number f, completely and uniquely deter- 

mined by 30 11 . For a = 0, we may also put Va = 19 

10 g is the last of the numbers 0, 1, 2, ..., p whose &th power is <. 

11 In accordance with this we have, for instance, ^ x* not always =#, 
but always = | x \ . fc 

19 For negative a's we will not define y a at all; we can, however, if 

h is odd, write |/T= 



52 Chapter II. Sequences of real numbers. 

We will not enter further into the rules for calculations with roots, 
but consider them as familiar to every one, and will only prove the 
following simple theorems: 

29, 3 gives at once the 

* ^ * 
il. Theorem 1. // a > and a x > 0, then V a ^ Va l , according as 

a ^ a . Further we have the 

Theorem 2. If a > 0, then \V a) is a monotone sequence; and 
we have, more precisely, 

/ 3 /~- 
a>\a>V a >>!, if a >1, 

to* 

r- 3 / 
a<v/a<Vfl <<!, ^f a <l. 

(For a = 1 , //* sequence ^s of course = 1 .) 

Proof By 29, 3, a> 1 involves a 71 ^ 1 > a n >1, and thereiore 
by the preceding theorem, taking w (w -j- l) th roots , 

n n-H 

Va > l/a>l. 

Since for a < 1 aW the ir equality signs are reversed, this proves the 
whole statement. Hence finally we deduce the 

Theorem 3. If a > , then the numbers 

x n = # a" 1 
/om a nw/J sequence (monotone by the preceding theorem). 

Proof. For a=l, the assertion is trivial, as then x n = Q. If 
n. 

a > 1, and therefore Va > 1, i. e. x n = Va 1 > 0, then we reason 

n 
as follows: By the inequality of Bernoulli (v. 10, 7), Va = 1 + B 

glVCS a = (l+*J">l + na n >***.. 

Consequently a; n = | n | < ~, therefore (xj, by 26, 1 or 2, is a null 

sequence. 

If 0<a<l, then >1, and so, by the le^ult obtained, 
a 



is a null sequence. If we multiply this term by term by the factors Va, 

n 

which certainly form a bounded sequence, as a < V a < 1 , then 
it at once follows, by 26, 2, that 

(l Vaj, and therefore also (# n ), 
as a null sequence, q. e. d. 



7. Powers, roots and logarithms. Special null sequences. 53 

III. Powers with rational exponents. 

We again regard as substantially known, in what manner one may 
pass from roots with integral exponents to powers with any rational 

- > 

exponent: By a q , with integral p~Q, q > 0, we mean, for any posi- 

tive a, the positive number uniquely defined by 



1L 
If p > 0, then a may also be == 0; a q must then be taken to have 

the value 0. 

With these definitions, the three fundamental rules 29, 1, i.e. the 
formulae 

a? a r> = a r + r '; a r b r = (a b) r ; (a r Y = a rr> 

remain unaltered, for any rational exponents, and therefore calculations 
\vilh these powers are formally the same as when the exponents are 
integers. 

These formulae contain, at the same time, all the rules for working 
with roots, since every root may now be written as a power with a 
rational exponent. Of the less known results we may prove, as 
they are particularly important for the sequel, these theorems: 

Theorem 1. When a > 1 , then a r > 1 , if, and only if, r > . 32. 
Similarly, when a < 1 (but positive), then a r is < 1 if, and only if, 
r>0. 

Proof. By 31, 2, a and V 'a are either both greater or both less 

than 1; by 29 the same is true of a and \V a) = a r if and only if 
p> 0. 

Theorem la. // the rational number r > 0, and both bases are 
positive, then a r ^a 1 r , according as a a^. 

The proof is at once obtained from 31, 1 and 29, 3. 

Theorem 2. If a > 0, and the rational number r lies between the 
rational numbers r' and r", then a r also always lies between a r ' and 
a r " 13 , and conversely, whether a be <, =or>l, and /<, 
= or >r". 

Proof. If, firstly, a > 1 and r' < r", then 



13 The term "between" may be taken, as we please, either to include 

or exclude equality on both sides, excepting when a = 1, and therefore all 
the powers a r also = 1. 

3 (061) 



54 Chapter II. Sequences of real numbers. 

By Theorem 1, this already proves the validity of our statement for this 
case, and in the other possible cases the proof is quite as easy. From 
this proof we deduce, indeed, more precisely, the 

Theorem 2 a. If a>l 9 then to the larger (rational) exponent also 
corresponds the larger value of the power. If a < 1 (but positive) 
then the larger exponent gives the smaller power. In particular: 
If the (positive) base a=%=! 9 then different exponents give different 
powers. Hence we deduce, further, 

Theorem 3. // (r n ) is any (rational) null sequence, then the 
numbers 

x n =* n -l, (fl>0) 

also form a null sequence. If (r^ is monotone, then so is (# n ). 

Proof. By 31, 3, \ty~a ij and \y - l) are null sequences. 
If therefore e > be given, we can so choose M A and n % that 

! n 

for n>n 1 , \Va 1 

I n /l 

and for n > n.,, I V 1 

- | * a 

If m is an integer larger than both n l and n 9 then the numbers 

\a m I/ and \a m I/ both lie between e and -|-g, i. e 

i i 

a m and a m lie between 1 e and 1 + e 

By Theorem 2, a r then lies between the same bounds, if r lies be- 

1 . , 1 
tween and -| . 

Wl Wl 

that for every n > n , 



tween -- and -I -- . By hypothesis we can, however, so choose # , 



'. or -<^< ; 

for w>n , r<> is therefore between 1 e and 1-J-e. Hence, for 

these w's, . 

I a n 1 I < e, 

proving that (a r 1) is a null sequence. That it is monotone, if 
(r n ) is, follows immediately from Theorem 2 a. 

These theorems form the basis for the definition of 

IV. Powers with arbitrary real exponents. 
For this we first state the 

88. Theorem. // (x n \y n ) is any nest of intervals (with rational end- 
points) and a is positive, then 

for a ;> 1, o = (a* n \ a v ) 
and for a<l> o = (a Vfl \ a* n ) 



7. Powers, roots and logarithms. Special null sequences. 55 

is also a nest of intervals. And if (x n \y n ) is rational valued and = r, 
then o = a r . 

Proof. That in either case the left endpoints form a monotone 
ascending sequence, the right endpoints a monotone descending se- 
quence, follows at once from 32, 2 a. By the same theorem, a* n < a Vn> 
in the one case (a J> 1) and a Vn < a n in the other (a < 1), for every n. 
Finally, that in both cases the lengths of the intervals form a null 
sequence, follows, with the aid of 26, from 



for here the first factor, by 32, 3, is a null sequence, because (y n x n ) 
is by hypothesis a null sequence with rational terms; and the second 
factor is bounded, because for every n 

< a* n <; a yi 

in the one case (a 2> 1), 

<U" 

in the other (a <jl). 

Now if (# w |jy w ) = y, then r lies between x n and y n , for every n, 

and so by 32, 2, a r lies between a* and a Vn , for every n; hence by 

5, Theorem 4, necessarily a = a r . 

In consequence of this theorem, we may agree to the following 
Definition 14 . If a > 0, and Q = (x n I ^ n ) is an arbitrary real 

number, then: 

' a* n a Vn it a > 1 



a* = <7, i. e. 



if 



This definition can of course only be regarded as appropriate, 
if the concept of a general power thereby determined obeys subs tan. 
tially the same laws as the type of power so far considered, that 
with rational exponents. That this is so, in the fullest sense, is shewn 
by the following considerations. 

1. For rational exponents, the new definition gives the same result 34. 
as the old. 

2. If e (?', then 15 a? a?'. 



14 This combination 33 of theorem and definition is, from the point 
of view of method, of exactly the same kind as those set forth in 14 19: 
What is demonstrable in the case of rational exponents is raised, in the 
case of arbitrary exponents, to the rank of a definition, whose appropriate- 
ness has then to be verified. 

16 This assertion, formally rather trivial in appearance, when put some- 
what more explicitly, runs thus: If (x n \ y n ) = (> and (x n f \ y^ = (>' are two nests 
of intervals, which may be regarded as equal in the sense of 14, then so are 
those nests of intervals equal (again in the sense of 14), which by Definition 33 
give the powers a e and a e '. 



56 Chapter II. Sequences of real numbers. 

3. For two arbitrary real numbers Q and Q', and positive a and 6, 
the three fundamental rules 



hold, so that with the general powers now introduced we may cal- 
culate formally in precisely the same way as with the special types 
hitherto used. 

Into the extremely simple proofs of these facts we will, as 
emphasized on p. 49, not enter further 16 ; we will also, so far as 
concerns the extension of theorems 32, 1 3 to general powers, now 
immediately possible, content ourselves with the statement and a few 
indications of the proof. We have therefore the theorems, generalized 
from 82, 13: 

85. Theorem 1. When a > 1, we have a Q > 1 if, and only if, Q > 0. 

Similarly, when a <. 1, (but positive), we have a Q < 1 if, and only 
if, Q>0. 

For by 82, 1, we have e. g. for a > 1, a* n > 1 if, and only if, 
x n >0. 

Theorem la. // the real number Q is > 0, and both bases are 
positive, then a Q ^ a?, according as a ^ a . 

Proof by 82, la and 15. 

Theorem 2. // a > and Q is between Q' and Q", then a^ is al- 
ways between a&' and ae". The proof is precisely the same as 
82, 2. It yields, more exactly, the 

Theorem 2 a. // a > 1, then to the larger exponent corresponds 
the larger value of the power \ if a < 1 (but positive), then the larger 
exponent gives the smaller power. In particular: If a + 1> then different 
exponents give different powers. And from this theorem, exactly as 
in 32, 3, follows the final 



16 As a model we may sketch the proof of the first of the three fundamental 
rules: If Q = (x n \ y n ) and Q' = (x n ' \ y n *), then by 16, o -J- Q' = (x n + x n ' \ y n -f y^ 
and therefore we assume a > 1 : 



Since all endpoints (as powers with rational exponents) are positive, we 
have, by 18, 

a e. a e' = (a Xn -a x * \ a v -a Vn "). 

Since, however, for rational exponents, the first of the three fundamental rules 
has already been seen to hold, this last nest of intervals is not only equal, in 
the sense of 14, to that defining a e+e , but even coincides with it term 
by term. 



7. Powers, roots and logarithms. Special null sequences. 57 

Theorem 3. // (p n ) is any null sequence, then the numbers 



form a null sequence. If (g n ) is monotone, then so is (xj. 
As a special application, we may mention the 

Theorem 4. // (# n ) is a null sequence with all its terms positive, 
then for every positive a, 

/*. ' _ rf 

X n ~ X n > 

is also the term of a mill sequence. Thus ( ) for every a > is a 

null sequence. ^ n ' 

i 

Proof. If s > be given arbitrarily, e a is also a positive number. By 
hypothesis, we can choose n Q so that, for every n > n Q (cf. 10, 1 and 12), 



For n > n , by 35, la, we then also have, however, 



which at once proves the whole statement. 

The above theorems comprise the main principles used in cal- 
culations with generalized powers. 

V. Logarithms. 

The foundation for the definition of logarithms lies in the 
Theorem. // a > and b > 1 are two real, and in all further 36. 
respects quite arbitrary numbers, then one and only one real number f 
always exists, for which 

b* = a. 

Proof. That at most one such number can exist, already follows 
from 35, 2 a, because the base b with different exponents cannot give 
the same value a. That such a number does exist, we show con- 
structively, by assigning a nest of intervals which determines it, 
thus for instance by the method of decimal sections: Since b > 1, 

(b~ n ) = fp-J is a null sequence, by 10, 7, and there exists, conse- 
quently, since a and are positive, natural numbers p and q for which 

b~ p <a and b" 9 < or b 9 > a. 
a 

If, now, we consider the various integers between p and -(- q in 
succession, as exponents of &, there must be one, and can be only 
one call it g for which 

b a a, but 



58 Chapter II. Sequences of real numbers. 

The interval J Q =- g . . . (g -[- 1) thereby determined we divide into 10 
equal parts and obtain, just as on p. 51, a "digit" z , for which 



r , but b'*"* r 



By repetition of the process of subdivision we find a perfectly definite 
nest of intervals 

\ x n == S+ jo + + io-i ' 10*' 

*-(*.|yJ. w " h L_ g + + ..+>-, + , + i f 

for which 

for every n, for which, therefore, in accordance with 33, 

This theorem justifies us in the following 

Definition. // a > and b > 1 are arbitrarily given, then the real 
number f , uniquely determined by 

b * === # 
t's called the logarithm of a to the base b; and, symbolically, 



(g is also called the characteristic, and the set of the digits z l9 z, z >A ... 
the mantissa, of the logarithm.) 

We speak of a system of logarithms, when the base b is assum- 
ed fixed once for all and the logarithms of all possible numbers are 
taken to this base 6. The suffix b in log & is then usually omitted 
as superfluous. Very soon a particular real number, usually denoted 
by e, appears quite naturally as the most convenient for all theo- 
retical considerations; the system of logarithms built up on this 
base is usually called the system of natural logarithms. For practical 
purposes, however, the base 10 is, as we know, the most convenient; 
logarithms to this base are called common or Briggs' logarithms. These 
are the logarithms found in all the ordinary tables 17 . 

The rules for working with logarithms we assume, as we did 
with powers, to be already known, and content ourselves with a mere 
mention of the most important of them. If the base b > 1 is arbitrary, 



17 As a matter of course, a system of logarithms may also be built up on a 
positive base less than 1. This, however, is not usual. The first logarithms cal- 
culated by Napier in 1014 were, however, built up on a base b < 1, which presents 
some small advantages, particularly for logarithms of trigonometrical functions. 
Neither Napier nor Briggs, however, really used any base. The idea of logarithms 
as the inverse of powers only developed in the course of the 18th century. 



7. Powers, roots and logarithms. Special null sequences. 59 

but assumed fixed in what follows, and if a, a', a" ... denote any 
positive numbers, then 

1. log (a! a") = log 0' + log a". 37, 

2. log 1=0; log = log a; log 6 = 1. 

3. log a Q = Q log a (Q arbitrary, real). 

4. log a^ log 0', according as a 5 a'; in particular, 

5. log 0^0, according as 0^1. 

6. If b and ^ are two different bases (> l), and and x the 
logarithms of the same number a to these two bases, i. e. 



then 

as follows at once from (a =) b% = fr^ 1 , by taking logarithms on both 
sides to ihc base b and taking account of 87, 2 and 3 

7. ff -)> n = 2, 3, 4, ... is a null sequence. In fact ^ < , 

provided log w > , that is, n> b e . 

VI. Circular functions. 

To introduce the so-called circular functions (the sine of a given 
angle 18 , with the cosine, tangent, cotangent etc.) in an equally strict 
manner, i e. avoiding on principle all reference to geometrical in- 
tuition as element of proof and founding solely on the concept ot 
the real number, is at this stage not yet possible. This question will 
be resumed later ( 24). In spite of this, we will unhesitatingly enlist 
them to enrich our applications and enliven our examples (but of 
course never to prove general propositions), in so far as their know- 
ledge may be presupposed from elementary work. 

Thus e. g. the following two simple facts can at once be ascertained: 37tt. 

1. If a, , <x 2 , . . ,, a n , . . . are any angles (that is to say, any numbers), then 

(sin a n ) and (cos ) 
are bounded sequences; and 

18 Angles will in general be measured in radians If in a circle of radius 
unity we imagine the radius to turn from a definite initial position, then we 
measure the angle of turning by the length of the path which the extremity 
of the moving radius has traversed taking it as positive when the sense of 
turning is counterclockwise, otherwise as negative. An angle is accordingly a 
pure number; a straight angle has the measure -J- n or n y a right angle the 

measure -f- -~- or -,- . To every definitely placed angle there belongs an 

It a 

infinite number of measures which, however, differ from one another only by 
integral multiples of 2jt, i. e. by whole turns. The measure 1 belongs to the 
angle, the arc corresponding to which is equal to the radius, and which there- 
fere in degrees is 57 17' 44"-8 nearly. 



Chapter II. Sequences of real numbers. 

2. the sequences 

and 



are (by 26) null sequences, for their terms are derived from those of the 
null sequence f J by multiplication by bounded factors. 

VII. Special null sequences. 

As a further application of the concepts now defined, we will 
examine a number of special sequences: 

88. 1. // \a\ < 1, then besides (a n ) even (na n ) is a null sequence. 
Proof. Our reasoning is analogous to that of 10, 7 19 : For 
a = 0, the assertion is trivial; for 0<|<z|<l, we may write, 
with Q > 0, 

101 = ,-4--, and therefore \a n \ = 

1+c 



Since here in the denominator each term of the sum is positive, we 
have for every n > 1, 

i ni 1 tr i ni 1-2 

</-TN > therefore wa < ___. 



Thus we have 

\na n \<.e, as soon as - ( '-^. 

11 ( n 1)0 

i. e. for every 



The result thus proved is very remarkable: it asserts, in fact, 
that for a large n the fraction . n is very small, and its denominator 

therefore very much greater than its numerator. This denominator is 
however constant (= l) for o = 0, and when Q is very small (and 
positive), it only increases very slowly with n. Nevertheless, our result 
shows that provided only n be taken sufficiently large, the deno- 
minator is very much larger than the numerator 20 . The point % from 

which | n a n \ = i^r-y lies below a given e we found n = 1 + i 
does indeed lie very far to the right, not only when e, but also when 
Q = p 1, is very small (i. e. | a \ very near to l). Substantially this 



19 Except that a and Q need no longer be rational. 



7. Powers, roots and logarithms. Special null sequences. 61 

and only this is true : However | a \ < 1 and e > may be given, we 
have always, from a readily assignable point onwards, | n a n \ < s. 

From this result many others may be deduced, e. g. the still more 
paradoxical fact: 

2. // | a | < 1 and a real and arbitrary, then (n* a n ) is also a null 
sequence. 

Proof. If a <I 0, then this is evident from 10, 7, because of 26, 

j_ 

2; if a > 0, write | a \ a a l9 so that by 35, la, the positive number 
a 1 is also < 1. By the preceding result, (n a n ) is a null sequence. By 
35, 4 

[na^ 1 ]*, i.e. n^ \ a \ n or | n* a n \ , 

therefore, finally, (by 10, 5), n* a n itself is also the term of a null sequence 21 . 
3. If a > 0, then ( /*) is a null sequence 22 , to whatever base b>l 

the logarithms are taken. 

Proof. Since b > 1, a > 0, we have (by 35, la), b >1. There- 

fore (j^n) is a null sequence, by 1. Given > 0, we have consequently 
from a certain point onwards, say for every n > m 

n < e' = 
(ft') n " tP 

But, in any case, 



if g denote the characteristic of log n (so that g rg log # < f- 1). If, 
therefore, we take n > b m , log n, and # fortiori g + 1, is > wz. Hence the 
last value above, with our choice of w, is 

< e for every ;/ > ;/ = 6 m . 



20 Writing as above | a | = f"T^~ I w a n | -^ ^-^ .> w e may also say: 

(1 -f- g) n becomes for a positive g more pronouncedly large, or, also more pro- 
nouncedly infinite, than n itself, by which we again (cf. 7, 3) mean nothing more 
and nothing less than that our sequence is precisely a null sequence. For future 
reference we remark here that the results proved in 1 and 2 arc also valid for a 
complex a, provided only | a \ < 1. 

21 With the same change of notation as above, we may say here: "(I + 0) n 
becomes more pronouncedly infinite than every (fixed) power however large of n 
itself". 

28 Or, in words, "log n becomes less pronouncedly large than every power, how- 
ever small (but determinate and positive), of n itself". 

3 ( G 51 ) 



Chapter IT. Sequences of real numbers. 
4. // cc and f> arc arbitrary positive numbers, then 



"\ 
7 



is a null sequence , however large cc and however small ft may be 23 . 
Proof. By 3., ( fi^ ] is a null sequence, because > 0; by 
35, 4, therefore, so is the given sequence. 

5. (a? n )=(Vn ij is a mill sequence. (This result is also very 
remarkable. For when n is large, we have a large number under 
the V ' the exponent of the V is, it is true, also large; but it is 
not at all evident a priori which of the two radicand or exponent 

will, so to speak, prove the stronger.) 

n 
Proof. For n > 1, we certainly have \n > 1, therefore 

n 

x n = V n 1 certainly ;> 0. Hence in 



all the terms of the sum are positive. Consequently we have, in 

particular, 

n(n 1) 9 

" - 



or 



24 



.. - 1 _ n 

Hence 



_ 

so that (x n ) = V/w 1 is in fact by 26, 1 and 35, 4 a null sequence. 
6. // (#J is a mill sequence whose terms are all > 1, then for 
every (fixed) integer k, the numbers 



also form a mill sequence 



3 "Every power of log n, however large, (but fixed) becomes less 
pronouncedly large than every power of n itself, however small (but fixed). 

84 The substitution, when n > 1 , of the value n ^- for (n 1) which 

6 

it cannot exceed, is an artifice often useful in simplifying 1 calculations. 

a& By the assumption that all a? n 's >> 1, we merely wish to ensure that 
the numbers x n ' are defined for every n. From a definite point onwards 
this is automatically the case, since (x n ) is assumed to be a null sequence and 
therefore from some point certainty | x n \ <[ l f and hence x n > 1. 



7. Powers, roots and logarithms. Special null sequences. 63 

Proof. From the formulae set forth on p. 22, Footnote 13, where 

k . 

we put a = i/1 -f- x n and 6 = 1, it follows that 2fl 



therefore, since the terms in the denominator are all positive and 
the last is 1, 

Irr 'I < I r 
I x n I ^ I X n > 

whence, by 26, the statement at once follows. 

7. // (x n ) is a null sequence of the same kind as in 6., then 
the numbers 

JfH = log (l + .r, t ) 

also form a null sequence. 

Proof. If b > 1 is the base to which the logarithms are taken, and 
e > is given, we write 

so that we have z l -=- b* 2 > 2 > 0. We then choose n so large, that 
for every n > w , | x n \ < s 2 . For those w's we have, a fortiori, 

therefore (by 35, 2 or 37, 4) 



with which the statement is proved. 

8. // (x n ) is again a null sequence of the same kind as in 6., 
then Hie numbers 



also form a null sequence, if Q denote any real number. 
Proof. By 7. and 26, 3, the numbers 



form a null sequence. By 35, 3 and 37, 3 the same is true of the numbers 
6*"-l = (l + sJ*--l = * n , q-e.d. 



We assume ft >: 2, since for k = 1 the assertion is trivial. 



64 Chapter II. Sequences of real numbers. 

8. Convergent sequences. 
Definitions. 

So far, when considering the behaviour of a given sequence, we have 
been chiefly concerned to discover whether it was a null sequence or not. 
By extending this point of view somewhat, in a manner which readily 
suggests itself, we reach the most important concept of all with which 
we shall have to deal, namely, that of the convergence of a sequence. 

We have already (cf. 10, 10) described the property which a sequence 
(x n ) may have, of being a null sequence, by saying that its members 
become small, become arbitrarily small, with increasing n. We may also 
say: Its terms, as n increases, approach the value 0, without, in general, 
ever reaching it, it is true; but they approach arbitrarily near to this 
value in the sense that the values of its terms (that is to say, their differences 
from 0) sink below every number e (> 0), however small. If we substitute 
for the value in this conception any other real number , we shall be 
concerned with a sequence (x n ) for which the differences of the various 
terms from the definite number that is to say, by 3, II, G, the values 
I x n | > sink, with increasing , below every number s > 0, how- 
ever small. 

We state the matter more precisely in the following: 

39. Definition. If (x n ) is a given sequence, and if it is related to a 
definite number in such a way that 

(* - 6 

forms a null sequence \ then we say that the sequence (x n ) converges 
to , or that it is convergent. The number is called the limiting value 
or limit of this sequence; the sequence is also said to converge to 1-, and 
zee say that its terms approach the (limiting) value , tend to , have the 
limit . This fact is expressed by the symbols 

x n -> 5 or lim x n = . 

To make it plainer that the approach to is effected by taking the index n 
larger and larger, we also frequently write 2 

x n ->^ for n -> oo or lim x n . 

w->o& 

Including the definition of a null sequence in the new definition, 
we may also say: 

x n -> for n -> oo (or lim x n = ) if for every chosen e > 0, we can 

n >x> 

always assign a number n Q = n Q (e), so that for every n > , we liave 



1 Or (f x n ) or | x n f |; by 10, 5 the result is exactly the same. 

2 Read: "x n (tends) towards f for n tending to infinity" in the one case, and 
"Limit x n for n tending to infinity equals f" in the other. In view of the definitions 
40, 2 and 3, it would be more correct to write here "n -> + oo"; but for simplicity 
the -f sign is usually omitted. 



8. Convergent sequences. t>5 

Remarks and Examples. 

1. Instead of saying "(# n ) is a null sequence", we may now, more shortly, 
write "x n -> 0". Null sequences are convergent sequences with the special limiting 
value 0. 

2. Substantially, all remarks made in 10 therefore hold here, since we are 
concerned only with a very obvious generalisation of the concept of a null sequence. 

3. By 31, 3 and 38, 5, we have for a > 

'Y/a f 1 and -\/n -> 1. 

4. If (x n | y n ) -^ (7, then x n -> a and y n -> <r. For both 

| * a | and also | y n - a \ are ^ \ y n - x n \ , 

so that both, by 26, ], form null sequences together with (y n x n ). 
/ _ |\n 14365 

5. For x n = 1 - - n - , that is, for the sequence 2, ^, y ^ ^ ft , . . . , x n ->> 1, 

for | x n 1 | forms a null sequence. 



6. In geometrical language, x n -> f means that all terms with sufficiently 
large indices he in the neighbourhood of the fixed point . Or more precisely (cf. 
10, 13), m every e -neighbourhood of f, the whole of the terms, with at most a finite 
number of exceptions, are to be found 3 . In applying the mode of representation 
of 7, 6, we draw parallels to the axis of abscissae, through the two points (0, f e) 
and may say : x n - > , if the whole graph of the sequence (x n ), with the exception 
of a finite initial portion, lies in every s-strip (however narrow). 

7. The lax mode of expression: "for n = oo , x n = f" instead of x n -> f, 
should be most emphatically rejected. For an integer n = oo does not exist and 
v n need never be f . We are concerned merely with a process of approximation, 
sufficiently clear from all that precedes, which there is no ground whatever for 
imagining completed in any form. (In older text books and writings we frequently 
find, however, the symbolical mode of writing: "lim x n f", to which, since it 

W~00 

is after all meant only symbolically, no objection can be taken, excepting that 
it is clumsy, and that writing "n oo" must necessarily create some confusion 
regarding the concept of the infinite in mathematics. 

8. If x n -* , then the isolated terms of the sequence (x n ) are also called 
approximations to , and the difference x n is called the error corresponding to 
the approximation x n . 

9. The name "convergent" appears to have been first used by J. Gregory 
(Vera circuit et hyperbolae quadratura, Padua 10(37), and "divergent" (40) by Bernoulli 
(Letter to Leibniz of 7. 4. 1713). It was through the publications of A. L. Cauchy 
(see p. 72, footnote 18) that a limiting value came to be denoted generally by the 
prefixed symbol "lim". The arrow sign (->), which is so particularly appropriate, 
came into common use after 1906, through the works of G. H. Hardy, who himself 
referred it back to J. G. Leatham (1905). 

To the definition of convergence we at once append that of diver- 
gence: 

Definition 1. Every sequence which is not convergent m the sense 40. 
of 39 is called divergent. 



3 Frequently this is expressed more briefly: In every e-neighbourhood of 
? "almost all n terms of the sequence are situated. The expression "almost all" 
has, however, other meanings, e. g. in the Theory of Sets of Points. 



66 Chapter 11. Sequences of real numbers. 

With this definition, the sequences tt, 2, 4, 7, 8, 11 are certainly 
divergent. 

Among divergent sequences, one type is distinguished by its 
particularly simple and transparent behaviour, e. g. the sequences (n*}> 
(n), (a n ) for a > 1, (logn), and others. Their common property is 
evidently that the terms increase with increasing n beyond every bound, 
however high. For this reason, we may also say that they tend to -| oo, 
or that they (or their terms) become infinitely large. This we put 
more precisely in the following 

Definition 2. // the sequence (# M ) has the property that, given an 
arbitrary (large) positive number G, another number n Q can always be 
assigned such that for every n > w 



then 4 we shall say that (x n ) diverges to |- oo , tends to + oo , or is definitely 
divergent 5 with the limit + oo ; and we then write 

x n -> + oo (for n > oo) or lim x n + oo or Km x n + oo. 

M >' 

We are merely interchanging right and left by defining further: 

Definition 3. // the sequence (x n ) has the property that, given an 
arbitrary negative number G (large in absolute value), another number 
n Q can always be assigned such that for every n > w 

*<-<?, 

then we shall say that (x n ) diverges to oo, tends to oo or is definitely 
divergent 5 with the limit GO, and we write 

x n -> oo (for n -> oo) or lim x n oo or lim x n ~ oo. 



n- 



Remarks and Examples 

1 The sequences (n), (n*), (n n ) for a > 0, (log*), (log n) a for a>0, 
tend to H-OO; those whose terms have these values with the negative sign 
tend to OO. 

2. In general- If # >-f-oo, then y n f = x n -> QO, and conversely. 
It is therefore sufficient, substantially, to consider divergence to +CO in what 
follows. 

3. In geometrical language, x n * + OO means, of course, that however a 
point G (very far to the right) my be chosen, all points x n , except at most a 
linite number of them, remain beyond it on the right. With the mode of 



4 Notice that here not merely the absolute values \x n \, but the numbers x n 
themselves, are required to be >> G. 

6 It is sometimes even said, with apparent distortion of facts, that 
the sequence converges to -f oo. The reason for this is that the behaviour 
described in Definition 2 resembles in many respects that of convergence (39). 
We will not, however, subscribe to this mode of expression, although a mis- 
understanding would never have to be feared. Similarly for OO. 



8. Convergent sequences. 67 

representation in 7, 6, it means that* however far above the axis of abscissae 
we may have drawn the parallel to it, the whole graph of the sequence (x n ) 
excepting- a finite initial portion, lies still further above it. 

4. The divergence to ^ CO need not be monotone; thus for instance the 
sequence 1, 2 1 , 2, 2 s 3, 2 3 , 4, 2 4 , ..., A, 2*, ... also diverges to + 00. 

5. The succession 1, 2, +3, 4, ..., ( l)"~ 1 n, ... does not diverge 
to -foo or to OO. This leads us to the further 

Definition 4. A sequence (x n ), which either converges in the sense 
of definition 39, or diverges definitely in the sense of the defini- 
tions 40, 2 and 3, will be said to behave definitely (for n+oo). 
All other sequences, which therefore neither converge, nor diverge defini- 
tely, will be called indefinitely divergent or, for short, Indefinite*. 

Remarks and Examples. 

1. The sequences [(-I)"], [(-2)"], (a") for a<-l, and likewise the se- 
quences 0, 1, 0, 2, 0, 3, 0, 4, ... and 0, 1, 0, 2, 0, - 3, . . ., as also the se- 
quences 6, 4, 8 are obviously indefinitely divergent. 

2. On the contrary, the sequence (| n |) for arbitrary a, and, in spite of 
all irregularities in detail, the sequences (3 n -f-( 2) n ), (n-\- ( l) n log n), 
(n 9 -j-( l) n w), show definite behaviour. 

3. The geometrical interpretation of indefinite behaviour follows imme- 
diately from the fact that there is neither convergence (v. 39, 6) nor definite 
divergence (v. 40, 3, rein 3). 

4. Both from x n * + 00 and from # n -> oo it follows, provided every 

term 4= 7 , that -* 0; for | x n \ > G = evidently implies < *. On 
x n s x n 

the other hand, x n + in no way involves definite behaviour of (- ) 

\ x n / 

(-i) n /n 

Example: For x n , we have a? n ->0, but ( J indefinitely diver- 

n \ x n J 

gent. We have however, as is easily proved, the 

Theorem: // (x n ) is a null sequent e whose terms all have the same sign, 

then the sequence ( J is definitely divergent; and of course to -foo or 

\Xfi/ 

OO, according as the x n 's are all positive or all negative. 



9 We have therefore to consider three typical modes of behaviour of a 
i equence, namely: a) Convergence to a number f, in accordance with 39; 
')) divergence to OO, m accordance with 40, 2 and 3; c) neither of the 
i wo . Since the behaviour b) shows some analogy with a) and some with c), 
modes of expressions in use for it vary. Usually, it is true, b) is reckoned as 
ilivergence (the mode of expression mentioned in the last footnote cannot 
be consistently maintained) but "limiting values" -J-oo and oo are at the 
name time spoken of. We therefore speak, in the cases a) and b), of a de- 
inite, in the case c) of an indefinite, behaviour; in case a), and only in 
his case, we speak of convergence, in the cases b) and c) of divergence. 
Instead of "definitely and indefinitely divergent", the words "properly and im- 
properly divergent" are also used Since, however, as remarked, definite di- 
vergence still shows many analogies to convergence and a limit is still spoken 
of in this case, it does not seem advisable to designate this case precisely as 
that of proper divergence. 

7 From some place onwards this is certainly the case 



(58 Chapter II. Sequences ot real numbers. 

To facilitate the understanding of certain cases which frequently 
occur, we finally introduce the following further mode of expression: 

Definition 5. // two sequences (% n )and(y n } 9 not necessarily con- 
vergent, are so related to one another that the quotient 

Xn 

y n 

tends, for *-|-oo, to a definite finite limit different from 
zero 8 , then we shall say that the two sequences are asymptotically 
proportional and write briefly 



// in particular this limit is 1, then we say that the two sequences are 
asymptotically equal and write, more expressively 

* n ^y- 

Thus for instance 

__ I 

V" a 4- 1 * * * 1 (5 w" + 23) ~ log n , \'n + 1 - ^/n ~v - , 

1/n 

1 -f 2 H ----- h n ~ ri 2 , l-4-2 2 + .**4-n a ^- j n 3 . 



These designations are due substantially to P. dw Bois-Reymond (Annali 
di matematica pura ed appl. (2) IV, p. 338, 1870/71). 

To these definitions we now attach a series of simple, but quite 
fundamental 

Theorems on convergent sequences. 

41. Theorem 1. A convergent sequence determines its limit quite 

uniquely 9 . 

Proof. If x n +!;, and simultaneously x n ', then (x n f) and 
(x n ') are null sequences. By 28, 2, 



is then also a null sequence, i. e. | = f, q. e. d. 



10 



8 x n and y n must then necessarily be =}= /n?w some place onwards. This 
is not required for every n in the above definition. 

9 A convergent sequence therefore defines (determines, gives . . .) its 
limit quite as uniquely as any nest of intervals or Dedekind section defines the 
number to which it corresponds. Thus from this point we may consider a real 
number as given if we know a sequence converging to it. And as formerly we 
said for brevity that a nest of intervals (a;,, | y n ) or a Dedekind section (A \ B) 
or a radix fraction is a real number, so we may now with equal right say that 
a sequence (x n ) converging to f is the real number f , or symbolically: (# n ) = { . 
For further details of this conception, which was used by G. Cantor to construct 
his theory of real numbers, see pp. 79 and 95. 

10 The last step in our reasoning, by which the reader may at first sight 
be taken aback, amounts simply to this: If with respect to a definite numerical 
value a we know that, for every e>0, we always have | a | < e, then we 



8. Convergent sequences. l>y 

Theorem 2. A convergent sequence (x n ) is invariably bounded. And 
if | x n | 5g K, then for the limit we have u | | ^ /. 

Proof. If x n -> , then we can, given e > 0, assign a number m, 
such that for every n > m 

f-e<* n < + e. 

If therefore K l is a number greater than the m values | x l [, | x 2 |, . . . , 
| x m | , and greater than | | + e, then obviously 

I * i < *i 

for every n. Now let K be any bound of the numbers | x n \. If we had 
| | > K y then | | K > and therefore, from some place onwards 
in the sequence, 

\t\-\* n \^\* n -t\<\e\-K 

and therefore | x n \ > K, which is contrary to the meaning of K. 

Theorem 2a. x n -> f implies \ x n \ -> \ |. 
Proof. We have (v. 3, II, 4) 



therefore ( | x n \ \ \ ) is by 26, 2 a null sequence when (# n ) is. 
Theorem 3. If a convergent sequence (x n ) has all its terms different 

from zero > and if its limit g is also 4= 0, then the sequence () is bounded; 

\x n / 

or in other words, a number y > exists, such that \ x n \ ^ y > for every 
n; the numbers \ x n \ possess a positive lower bound. 

Proof. By hypothesis, J | | = e > 0, and there exists an integer 
m, such that for every n > m, \ x n | < e and therefore | x n \ > % \ g \ 12 . 
If the smallest of the (m + 1) positive numbers | x |, | x 2 |, . . . , | x m \ 
and i | ^ | be denoted by y, then y > 0, and for every n, \ x n \ ^ y, 



= l -, q. e. d. 



If, given a sequence (# n ) converging to , we apply to the null se- 
quence (x n ) the theorems 27, 1 to 5, then we immediately obtain 
the theorems: 

necessarily have a 0. For is the only number whose absolute value is less than 
every positive e. (In fact | | < c is true for every e > 0. But if a 4= 0, so that 
| a | > 0, then | a | is certainly not less than the positive number e = J | a |.) Simi- 
larly, if we know of a definite numerical value a that, for every e > 0, we always 
have a ^ K + e, then we must have further a g K. The method of reasoning 
involved here: "If for every z > 0, we always have | a | < e, then necessarily a 0" 
is precisely the same as was constantly applied by the Greek mathematicians (cf. 
Euclid, Elements X) and later called the method of exhaustion 

11 Here the sign of equality in "| f | *g K" must not be omitted, even when, 
for every n t \ x n \ < K. 

12 For n ^ m, all the x n 's are therefore necessarily 4= 0. 



70 Chapter II. Sequences of real numbers. 

Theorem 4. // (x n ') is a sub-sequence of (x n ), then 
x n +t; implies x n '>. 

Theorem 5. // the sequence (x n ] can be divided into two sub- 

sequences of which each converges to , then (x^ itself converges to . 

Theorem 6. // (#') is an arbitrary rearrangement of x n , then 

x n -> implies x n ' -> f . 

Theorem 7. // x n >f and (# n ') results from (# n ) by a finite 
number of alterations, then x n '+$. 

Theorem 8. // # n ' *l and # n "-*f, and if the sequence (x^ is 
so related to the sequences (x n ') and (x n ") that from some place onwards, 
(i. e. for every n^>m, say t ) 

rr ' < r < v " 

X n ^ X n ^ X n > 

then x n +. 

Calculations with convergent sequences are based on the following 
four theorems: 

Theorem 9. x n > f and y n * r\ always implies (x n + y n ) ~ * f + ^ * 
and the corresponding statement holds for term by term addition of any 
fixed number say p of convergent sequences. 

Proof. If (x n |) and (y n rf) are null sequences, then so, by 
28, 1, is ((x n + y n ) (f -{- 17)). In the same way, 28, 2 gives the 

Theorem 9 a. x n + f and y n +r], always implies (x n y n ) + f rj . 

Theorem 10. x n >| and y n +ri> always implies x n y n +r)> 
and the corresponding statement holds for term by term multiplication 
of any fixed number say p of convergent sequences. 

In particular: x n * implies cx n +c, whatever number p 
denote. 

Proof. We have 



and since here on the right hand side two null sequences are multi- 
plied term by term by bounded factors and then added, the whole 
expression is itself the term of a null sequence, q. e. d. 

Theorem 11. x n * and y n +r] always implies, if every x n =^Q 

and also f 4= 

yn jv 
**~*f ' 
Proof. We have 

yn ri ___ y S-x H rj __ (y n ~ >y) g - (x n - g) 17 



18 Or three, or any definite number. 



8. Convergent sequences. 71 

Here the numerator, for the same reasons as above, represents a null 
sequence, and the factors - are, by theorem 3, bounded. Therefore 

S' x n 

the whole expression is again the term of a null sequence. Only 
a particular case of this is the 

Theorem 1 1 a 14 . x n - > g always implies, if every x n and also are 

4=0, , ! 



These fundamental theorems 8 11 lead, by repealed application, 
to the following more comprehensive 

Theorem 12. Let R = R (x (l) , z 2) , x (3) , . . ., xW) denote an ex- 
pression built up, by a finite number of additions, subtractions, multi- 
plications, and divisions, from the letters x (1) , o? (9) , ... 9 x ( &, and arbitrary 
numerical coefficients 1 *; and let 



be p given sequences, converging respectively to (1) , f (3) , . . ., f & } . Then 
the sequence of the numbers 



provided neither in the evaluation of the terms R n , nor in that of the 
number R( (1) , (2) , > (p) ), division by is anywhere required. 

These theorems give us all lhat is required for the formal mani- 
pulation of convergent sequences: We give a few more 

Examples. 

1. -> implies, if a>0, invariably, 42, 

a*"-*a. 

For 

a*- a* ^ (<***-*-- x ) 

fs a null sequence by 35, 3 

2. a:-*-f implies, if every . and also are >-0, that 

log ac m -* log | . 
Proof. We have 



log o:,, - log log ^ = loff (l + *" 



which by 38, 7 is a null sequence, since x n > implies ~-~- > 1 . 



14 In theorems 3, 11 and lla, it is sufficient to postulate that the limit of 
the denominators is 4= 0, for then the denominators are, from some index m on- 
wards, necessarily 4= 0, and only "a finite number of alterations" need be made, 
or the new sequence need only be considered for n > m, to ensure this being the 
case for all. 

lfi More shortly: a rational function of the /> variables .\; (1) , v w , . . . , .x- (p) with 
arbitrary numerical coefficients. 



72 Chapter II. Sequences of real numbers. 

3. Under the same hypotheses as in 2., we also have, for arbitrary real Q, 

Proof. We have 

\ x% Q = l 

\ 

which by 38, 8 is a null sequence 16 , since *"-p-^ > 1 and tends to as n ~> QO. 
(This is to a certain extent further completed by 35, 4.) 

Cauchy's theorem of limits and its generalisations. 
There is a group of theorems on limits 17 essentially more pro- 
found than the above, and of great significance for later work, which 
originated in their simplest form with Cauchy 16 and have in recent 
times been extended in different directions We have first the simple 
43. Theorem 1. // (# , x 19 ...) is a null sequence, then the arith- 
metic means 

~. 9 %o ~r x i ~r "r % r\ - Q 

X n n-f- 1 ' * * *' 

also form a null sequence. 

Proof. If s is given > 0, then m can be so chosen, that for 

every n > m we have la; I < -- . For these n's, we then have 



n - n+1 T- 2 n + 1' 

Since the numerator of the first fraction on the right hand side now 
contains a fixed number, we can further determine n , so that for 

n > w that fraction remains < -|-. But then, for every n > n Q , we 

have | # n ' | <C e, and our theorem is proved. Somewhat more 
general, but nevertheless an immediate corollary of this, is the 
Theorem 2. // x n *, then so do the arithmetic means 



ltt Examples 1. to 3. mean in the language of the theory of functions 
that the function a x is continuous at every point, the functions log a; and X Q 
at every positive point. 

17 The reader may defer the study of these theorems until, in the later 
chapters, they come into use. 

18 Augustin Louis Cauchy, born 1789 in Paris, died 1857 in Sceaux. In 
his work Analyse alg&bnque, Paris 1821 (German edition, Berlin 1885, Julius 
Springer) the foundations of higher analysis are for the first time developed 
with full rigour, and among them the theory of infinite series. In what follows 
we shall frequently have to refer to it; the above theorem 2 may be found on 
p. 59 of that treatise. 



8. Convergent sequences. 73 

Proof. By theorem 1, 

/fa-e + fe-g)+...+(*.-m = ^ ' _ |) 

is a null sequence when (x n ) is, q. e d. 

From this theorem, the corresponding one for geometric means 
now follows quite easily. 

Theorem 3. Let the sequence (y , y a , . . .) ^77, and have all its 
members and its limit r\ positive. Then also the sequence of geo- 
metric means 



/ -,"/: 



Proof. From y n ^, since all the numbers are positive, we 
deduce, by 42, 2, that 



By theorem 2, it follows that 

a; _ *i*+ n -+* _ log ^ yi y 2 ...^ = log y n '- log 17. 
By 42, 1, this at once proves the truth of our statement. 

Examples. 

'+!'- -4 

1. ----- *0, because -- *0. 
w n 



2. V f = l--"-~-* 1 ' because 



n_ 

yn n _ 

8. - - - - - - -- > 1, because y n -* 1 . 

/ i \ 
4. Because ( 1 -^ -- ) - (v. 46 a in the next ), we have by theorem 3, 



. 

-2 - V^T- - --" also 



or, therefore, 

i n _ i 

JLy M !^, 

n r e ' 

n _ n 
a relation which may also be noted in the form "^n\^. ". 



74 Chapter II. Sequences of real numbers. 

Essentially more far-reaching, and yet as easily proved, is the 
following generalisation of Cauchy's theorems 1 and 2, due to 
$. Toeplitz: 

Theorem 4. Let (X Q , #j , . . .) be a null sequence and suppose 
the coefficients a flv of the system 



(A) 



satisfy the two conditions: 

(a) Every column contains a null sequence, i. e. for fixed P^O 

fl np >0 when n >-{-oo. 

(b) There exists a constant K, such that the sum of the absolute 
values of the terms in any one row , i. e., for every n, the sum 

kaol + KiH ----- \-\a nn \ remains < K. 
Then the sequence formed by the numbers 

X n = <*nO X + *nl X l + a n* X * H ----- H <*nn X n 

is also a null sequence. 

Proof. If e is given > 0, determine m 50 that for every n>m 
\ x \ < ^- 'Ihen for those w's, 



By the hypothesis (a), we may now (as m is fixed) choose n > m, 
so that for every n > n {} , we have | a nQ x ~{ ----- 1- a nm x m \ < y . Since 

for these w's | x n ' \ is then -< e, our theorem is proved. 
In applications it is useful to have the following 
Complement. If, for the coefficients a^ t are substituted other 

numbers a^ = a*i *^ x ^, obtained from the numbers a^\ by multiplication 

19 Cauchy's Theorem 1 has been generalised in several ways, in particular 
by J. L. W. V. Jensen (Cm en Satning af Cauchy, Tidsknft for Mathematik, (5) 
Vol. 2, pp. 81 84. 1884) and O. Stolz (t)ber erne Verallgemeinerung eines Satzes 
von Cauchy, Mathemat. Annalen, Vol. 33, p. 237. 1889). The above formulation, 
due to O. Toephtz (Uber hneare Mittelbildungen, Prace matematycznofizyczne, 
Vol. 22, p. 113 119. 1911), is in a certain sense a final generalisation, for this reason 
that it shows (1. c.) the conditions, recognised in Theorem 5 as sufficient, to be 
also tiecf \\ary, tor \ n - - to imply x n ' -* in all cases (cf. 221, and the work of /. 
Sthur: Cber hneare Transformationen in der Theorie der unendlichen Reihen, Jour. 
f.d. reine u. angew. Math., Vol. 151, pp. 79111. 1920). 



8. Convergent sequences. 75 

by factors X A M in absolute value less than a fixed constant a, 
then the numbers 



/0m a null sequence. 

Proof The a^'s also satisfy the conditions (a) and (b) of 
theorem 4; for, if p is fixed, a' np -+Q by 26, 1, and the sums 

o + i+"- + n remain <K=--aK. 



From Theorem 4 we may now deduce the 
Theorem 5. // x n >f, a^ tfci coefficients a^ v satisfy, besides 
the conditions (a) an^ (b) of Theorem 4, //t further condition 



also the sequence formed by the numbers 



Proof. We now have 



whence our statement at once follows, in consequence of condition (c), 
by theorem 4. 

Before giving examples and applications of these important theorems, 
we may prove the following further generalisation, which points in a 
new direction. 

Theorem 6. // the coefficients a fiv of the system (A) satisfy, 
besides the conditions (a), (b) and (c) mentioned in Theorems 4 and 5, 
the further condition, that 

(d) the numbers in each of the "diagonals" of A form a null 
sequence, i.e. for fixed p, a nn _ p >0 when n+-\-<x>, 

then it follows from x n -^> and y n +r] that the numbers 



Proof. Since 

x v = (x - 

"V jnv \~v 

we have 

n 

Z n = J|j #n' ynv\Z 
v=0 

10 In the applications, we shall generally have A n = 1. 

11 For positive a^v, this theorem may be found in a paper by the author 
"Uber Summen der Form a b n -f a t 6,,^ + - -f- a w 6 " (Rend, del circolo mat. 
di Palermo, Vol. 32, p. 95-110. 1911). 



76 Chapter II. Sequences of real numbers. 

Here the first sum tends to zero, by Theorem 4 and its complement, 
for (x v f) is a null sequence and the factors y n _ y are bounded. 
And if the second sum be written in the form 



v=0 v=0 

we see, by theorem 5, that this, and thereby also z n , tends +$rj; 
for the numbers a' nv = a nn - v satisfy, in consequence of (d), precisely 
the condition (a) there stipulated. 

44. Remarks, applications and examples. 

1. Theorem 1 is a particular case of Theorem 4; we need only put, in 
the latter, 

a0 = a ni = - = a nn = ^~T\ > (n = 0, 1, 2, . . ) 

Theorem 2 is derived in the same way from Theorem 5. The conditions 
(a), (b), (c) are fulfilled. 

2. If , a a , . . . are any positive numbers, for which the sums 

it follows 22 from x n -> f that 



In fact, we need only put, in theorem 5, 

a _x / = 0, 1,2, ... 
n '~o n \ - = 0,1 n 

to see that the statement is correct. The conditions (a), (b), (c) are fulfilled. 
For <x n == 1 , we again obtain Theorem 2. 

2 a. The theorem of no. 2. remains true for f = + oo or f = oo . The 
same remark holds for the general theorem 5, provided all the a^v's are >: 
there. For if x n + + oo and, as in the proof of Theorem 4, m be so chosen, 
given G>0, that for every n^>m we have rt > G-|- 1, then for those n's 
we have 

x n ' >(G -f 1) (a mm+l + . . . -f a nn ) - a no \ x \ - . . . - a n m \ x m \ . 



In consequence of the conditions (a) and (c) in Theorems 4 and 5, we may 
therefore so choose n that for every n>w we have aj/>G. Hence 
*'-> + 00. 

u 3. Instead of assuming the a n 's positive and a n -> + GO , it suffices [by (b)] 
to require onlv that | a | -f | a, | + . . . + | a n | -> -f O, with the proviso, however, 
that a constant K exists, such that 23 for every n 

I o I + I i I + . - + I n I < K ' | a + a, + . . . + a n |. 
(For positive a n , J=l gives all that is here required.) 



84 O. 5<o/z, loc. cit. Of course it also suffices, that the a n 's be from 
some point onwards >0, provided only o n ->-foo. The # n "s must then be con- 
sidered from that point onwards, after which a n is > 0. 

88 Jensen, loc. cit. If oc m is the first of the a's to be =j= 0, then the x m "s 
are defined only for w>w. 



8. Convergent sequences. 77 

4. If in 2. or 3 we put, for brevity, ce n x n y ny then we obtain: 



o i - 

and provided the a n 's satisfy the conditions given in 2. or 3. 

5. If we write further y +y l -f- . - . +y n = ^n, and + <* t + + ** = 4 
then the last result takes the form: 

v v _ v 

-*, provided J-_Jua-*f, 

-^n ^n -n i 

and provided the numbers cc n = A n A n _^ (n > 1, a = ^4 ) satisfy the conditions 
given in 2. or 3. 

6. Thus we have, for instance, by 5.: 



.. 1 + 2-I-...4-* .. n n 1 

lim - K - = lim - = hm s - - = -^ 
w^ w a (n l) a 2n 1 2 

Similarly we have 

l + 2 a +...+n 9 ,. n* 1 

lim ---- - --- = lim -- - - -- - = 

n 3 w a -(w I) 3 3 

and generally 



-^-. 
2 



,. L F -f- Z r -j- . . . -J- W 

lim : ! = lim 

n* 



* lim- 



it p denotes a positive integer. 

7. Similarly we find, if we anticipate the proof in 46 a of the convergence 

of the sequence of numbers ( 1 -\ ) ! 

\ n / 

log 1-f- log 2 -{-...+ log n lognl . V 

. ! ^ = . 1 I.e. Ino- -M! /-v/ loort _ ^ 

nlogn log n n 

8. The numbers 



fulfil the conditions (a), (b) and (c) of the theorems 4 and 5; for if p be fixed, 
*np+Qi seeing that it is 



= ' and therefore < l ( v - 38 ' 2 > 



while 



toi every n. Therefore o; n --? always implies 



78 Chapter II. Sequences of real numbers. 

9. The same specialisations as were given in 1., 2., 3. and 8. for theorem 5 
may of course also be applied to theorem 6. We merely mention the two 
following theorems: 

(a) From x n *> and y n -^-rj it always follows that 

x, ?__! 4- a-g y n _ 2 -f ... j-x n y fr 



(b) If (#) and (y n ) are two null sequences, the second of which fulfils 
the extra condition that for every n 



remains less than a fixed number K, then the numbers 



form a null sequence. (For the proof we put a nv = y n - v in theorem 4.) 

10. The reader will have noticed that it is in no wise essential that the 
rows of the system (A) of theorem 4 should break off exactly at the n ih term. 
On the contrary, these lows may contain any number of terms. Indeed, after 
we have mastered the first principles of the theory of infinite series, we shall 
see that these rows may contain even an infinity of terms (a no , /tlT . . ., a nv , . . .), 
provided only the other conditions imposed on the system be fulfilled. The 
theorem hereby indicated will be formulated and proved in 221. 

9. The two main criteria. 

We are now sufficiently prepared to attack the actual problems of 
convergence. There are two mam points of view from which we 
propose, in what follows, to examine the sequences which come before 
us. We have above all to consider the 

Problem A. 7s a given sequence (x n ) convergent, or definitely 
or indefinitely divergent? (Briefly: How does the sequence behave 
with respect to convergence?) And if a sequence has pioved to 
be convergent, so that the existence of a limiting value is ensured, 
we have further to consider the 

Problem B. To what limit $ does the sequence (# n ), recognized 
to be convergent, tend? 

A few examples may make the significance of these problems 
clearer: If for instance we are given the sequences 



examination of their construction shows that there are always two (01 
more) forces which here, so to speak, oppose one another and thereby 
call forth the variation of the terms. One force tends to increase, 



9. The two main criteria. 79 

the other to diminish them, and it is not clear at a glance which of 
the two will get the upper hand or in what degree this will happen. 
Every means which enables us to decide the question of convergence 
or divergence of a given sequence, we call a criterion of convergence 
or of divergence; these serve, therefore, to solve the problem A. 

The problem B is in general much more difficult. In fact, we 
might almost say that it is insoluble, or else is trivial. The latter, 
because a convergent sequence (x n \ by theorem 41, 1, entirely deter- 
mines its limit f , which may therefore be regarded as "given" by the 
sequence itself (cf. footnote to 41, 1). On account, however, of the 
boundless complexity and multiplicity of form which sequences show, 
this conclusion does not seem very satisfactory. We shall wish, rather, 
not to consider the limit | as "known", until we have before us a 
Dedekind section, or still better a nest of intervals, for instance a radix 
fraction, in particular a decimal fraction. These latter especially are the 
methods of representing a real number with which we have always been 
most familiar. If we regard the problem in this light, we may call 
it the question of numerical calculation of the limit 1 . 

This question, one of great practical significance, is usually in 
theoretical considerations of very second-rate imporiance, for from a 
theoretical point of view, all modes of representation for a real number 
(nests, sections, sequences, . . .) are precisely equivalent. If we observe 
further, that the representation of a real number by a sequence may 
be considered as the most general mode of representation, our problem B 
may be stated in the following form. 

Problem B'. Two convergent sequences (#J and (#) are given, 
how may we determine whether or not both define the same limit, or 
whether or not the two limits stand in a simple relation to one another? 

A few examples will serve to illustrate the kind of question referred to: 

l - Let _/i J.1Y 1 ^ ' fi^ *\ 45. 



Both sequences are quite easily (v. 46 a and 111) seen to be convergent. 
But it is not so apparent that if denotes the limit of the first sequence, that 
of the second is = f *. 

2. Given the sequence 

_!_ 3 ^ 17 41^ 

1 ' ~2~' 5 ' "12 ' 29 ' " 

in which the numerator of each fraction is formed by adding twice the nume- 
rator of the last fraction preceding to the numerator of the last fraction but 
one (e. g. 41 = 2-17 + 7), nnd similarly for the denominators. The question of 



1 Numerical calculation of a real number = representation of that num- 
ber by a decimal fraction. For further details, see chapter VII T. 



80 Chapter II. Sequences of real numbers. 

convergence again gives no trouble, nor does the numerical evaluation of the 
limit, but how are we to recognise that this limit 



and let x n be the perimeter of the regular polygon with n sides inscribed in 
the circle of radius 1. Here also both sequences are easily seen to be con- 
vergent. If f and f are their limits, how does one see that here ' = 8? 

These examples make it seem sufficiently probable, that Problem B 
or B' is considerably harder to attack than Problem A. We therefore 
confine our attention in the first instance entirely to the latter, and to 
begin with make ourselves acquainted with two criteria, from which 
all others may be deduced. 

First main criterion (for monotone sequences). 

46. A monotone bounded sequence is invariably convergent; a mono- 
tone sequence which is not bounded is always definitely divergent. 
(Or, therefore: A monotone sequence always behaves definitely, and 
is then and only then convergent, when it is bounded, and then and 
only then divergent, when it is not bounded. In the latter case the diver- 
gence is towards -f- oo or oo according as the monotone sequence is 
ascending or descending.) 

Proof, a) Let the sequence (# n ) be monotone ascending and not 
bounded. Since it is then (because x n ^ o^) certainly bounded on 
the left, it cannot be bounded on the right; given any arbitrary (large) 
positive number G, there is then always an index n Q , for which 



But then, since the -sequence is monotone increasing, we have for 
every n > n , a fortiori, x n > G, and so, by Definition 40, 2, actually 
x n -+ + oo. Interchanging right and left, we see in the same way 
that a monotone descending sequence which is not bounded must 
diverge to oo. Thus the second part of the proposition is also proved. 
b) Now let (x n ) be a monotone ascending, but bounded sequence. 
There is then a number K, such that | x n \ <; K for every n, so that 



for every n. The interval J = aj x . . . K therefore contains all the terms 
of (x n ); to this interval we apply the method of successive bisection: 
We denote the right or the left half of / by / 9 , according as the 
right half does or does not still contain points of (#J. From / we 
select one half by the same rule, and call this / 3 ; and so on. The 
intervals of the nest so constructed have the properly 2 , that no point 

The reader should illustrate the circumstances on the number-axis. 



9. The two mam criteria. 81 

of the sequence lies to the right of them, but at least one lies inside 
each of them. Or in other words: the points of the sequence (while 
monotonely progressing towards the right) penetrate into each interval, 
but do not emerge from it again; in each of these intervals, therefore, 
all points from a certain index onwards come to lie. We may there- 
fore, if we suppose the numbers n if n^ y . . . properly chosen, say that: 

In J k lie all x n 's with n > n k , but to the right of J k lie no 
more x n 's. 

If f is now the number determined by the nest (/ M ), it can at 
once be shewn that a; w *f. For if e is given > 0, choose the index p 
so that the length of / is less than 6. For n > n p , all the x n 's lie, 
together with f , in / , so that for these ns we must have 



(x n ) is therefore a null sequence, and x n * , q. e. d. 

By a suitable interchange of right and left, we see that monotone 
descending bounded sequences must also be convergent. Thus every 
part of the theorem is proved. 

Remarks and Examples. 

1. We first draw attention again to the fact that (cf. 41, 1) even when 
I %n | <Z K , we may have for the limiting- value the equality | | = K . 

2. Let 



As 



the sequence is monotone increasing-, and as x n <n> - T^^ ^ * s a l so bound- 

n -f- 1 

ed. // is therefore convergent. Of its limit f we know no more, so far, than that 



37 
for every n, which e. gf. for n = 3 becomes ~^< 1. Whether it has a ra- 

tional value, or whether bears a close relation to a number appearing in any other 
connection in short: an answer to problem B cannot here be perceived at 
once. Later on we shall see that is equal to tt e natural logarithm of 2. I. e. the 
logarithm of 2 whose base is the number e introduced in 46a below. 

3. Let o? n =(l+- s - + -5--f-H ), so that the sequence (x n ) is monotone 
\ Jo n/ 

increasing (cf. 6, 12). Is it bounded or not? If G is given arbitrarily > 0, 
chose w>2; then for n>2 OT 



The sequence is therefore not bounded and consequently diverges + -f oo . 



82 Chapter II. Sequences of real numbers. 

4. If o = (x n | y n ) is an arbitrary n'est of intervals, the left and right end- 
points of the intervals respectively form two monotone, bounded and therefore 
convergent sequences. We then have 

lim r n = hm y n = (x n \ y n ) = a . 

16a. As a particularly important example, we will consider the two 

sequences whose terms are __- .*\ ^ v ~\ J^AAI/ * ; *i x 

^v ~' \ ' 

" and = 



* *.- 

We have no means of perceiving immediately (cf. the general remark 
on p. 78) how the sequences behave as n increases. 

We proceed to show first that the second sequence is monotone 
descending, that is to say that for n I> 2 



This inequality is in fact equivalent 3 to 




or to 



But the truth of //w's inequality is evident, since, by Bernoulli's in- 
equality 10, 7 we have, for a > I, a --\= and every n > 1, 



or in particular 



As, moreover, y n > 1 for every n, the sequence (yj is monotone des- 
cending and bounded, and therefore convergent Its limit will ofter 
occur later on; it is, since Rulers time, denoted by the special 4 letter e. 
As regards this number, we can only deduce for the present that 



which for e. g. n = 5 becomes 

. ^ 6 6 



3 That is to say, each inequality follows from all the others. 

4 Euler uses this letter to designate the above limit in a letter to Goldbach 
(2.*). Nov. 1731) and in 1736 m his work: Mechanica sive motus scientia analytice 
exposi ta, II, p. 251. 



9. The two main criteria. 83 

The first of our two sequences, on the contrary, is monotone ascending. 
In fact, # n _x < x n here means 5 

(1 \n--l / l\n 

1 + ,T--] 



or 




' e- l~^< (" 2 7 T = ( l ~ Vf- 

n \ n 2 / \ v 

But, again by 10, 7, we have actually for every # > 1, 



n+i 



The sequence (x n ) is therefore monotone increasing. 

As, in any case, 

(1 \ n 
i+ i) 

we have, for every w, A: W ^JVi, i- c. (jc w ) is also bounded and hence con- 
vergent. As, finally, the numbers 



are all positive and (by 26, 1) form a null sequence, we conclude at once 
that (x n ) has the same limit as (j' n ). Thus 

lim x n = lim j> n = . 
And for this number e we have furthermore, as has appeared in the proof, in 



a nest of intervals defining it. (It provides, for instance taking n 3, 
the inequality of < e < 2 H 5 t -; we shall however become acquainted later 
on ( 23) with other sequences converging to e y which are more convenient 
for numerical calculation.) 

This is the number e that (cf. p. 58) forms the base of the natural 
logarithms. We shall accordingly agree to use the symbol log to mean 
this natural logarithm to the base e, unless the contrary is expressly stated. 

The fruitfulness of the first main criterion is due above all to the 
fact that it allows us to deduce the convergence of a sequence of 
numbers from very few hypotheses, and these such as are usually very 
easy to verify namely, from monotony and boundedness alone. On 
the other hand, however, it still relates only to a special, even though 
particularly frequent and important kind of sequence, and therefore 

5 Cf. footnote 3. 



84 Chapter IT. Sequences ot real numbers. 

appears theoretically insufficient. We shall therefore ask for a criterion 
which enables us to decide quite generally as to the convergence or 
divergence of any sequence. This is accomplished by the following 

47. Second main criterion (1 st form). 

An arbitrary sequence (x n ) is convergent if and only if, given 
s > , a number n = n (e) can always be assigned , such that for any 
two indices n and n' both greater than n , wz have in every case 

\X n X n >\<e. 

We first give a few 

Explanations and Examples. 

1. The remarks 10, 1, 3, 4 and 9 are also substantially applicable here; 
and the reader is recommended to read them through once more in this con- 
nection. 

2. The criterion states to put it in intuitive language: all o; n 's with 
very high indices must he very close together. 

3. Let o; = 0, x t = 1 , and let every term after these be the arithmetic 
mean between the two terms which precede it, i. e. for n"^2 



s 



so that x a = , # 8 = , o; 4 = jj r , . . .. In this evidently not monotone sequence it 
is clear, on the one hand, that the differences between consecutive terms form 
a null sequence; for it may be verified quite easily by induction that 



_ 

x n + 1 x n 2" 

and so tends to 0. On the other hand, between these two consecutive numbers 
all the following ones lie. If therefore, after s has been assigned ^>0, we 

choose p so large that < , we have 
2 p 

I X n - X n ' |< 9 

provided only n and n' are ^>p. By the 2 nd mam criterion the sequence (x n ) 
is therefore convergent. The limit { also happens to be easily obtainable. A little 
reflection in fact leads to the surmise that f = J-. In point of fact, the formula 

2 ~ 2 (n 1 )** 1 

* w ~3~3* 2* 

can immediately be proved by induction and shows that x n is actually a 
null sequence. 

Before trying to fathom the meaning of the 2 nd main criterion 
further, we proceed to give its 

Proof, a) That the condition of the theorem let us call it for 
brevity its e condition is necessary, i. e. that it is always fulfilled 



8 This is true for n = and 1. From g fc+a -s fc + 1 = ** + * ^-f.S-JIJLzA 

& & 

it follows that if proved for every n < k , it is true for n = k -|- 1 . 



9. The two mam criteria. 85 

if (# M ) is convergent, is seen thus: If ", then (x n - ) is a null 
sequence; given e > 0, we can so choose n that for every n > n , 

| x n | j is < -- . If besides w, we also have n > W , then | ;r n j 
is also < -^ , and so 



which proves this part of the theorem. 

b) That the e- condition is also sufficient is not so easy to see 
We again prove it constructively, by deducing from the sequence (x n ) 
a nest of intervals (/J and then showing that the number determined 
thereby is the limit of the sequence. This is done as follows: 

Any e > being chosen, | x n x n ' \ must always be < e provided 
only the indices n and n' both exceed some sufficiently large value. 
If we suppose the one fixed and denote it by p, then we may also 
say: Given any e > 0, we can always assign an index p (actually, as 
far to the right as we please) so that for every n > P 



If we choose successively = -77, -r , ..., 7^, ... then we get: 

& 4 u 

1) There is an index p^ such that 

for every n > p 1 , we have | x n x pi \ < ~ . 

2) There is an index p t , which we may assume > p lt such that 

for every n > p^ , we have | x n x pi \ < -^ , 

and so on. A th step of this kind gives: 

k") There is an index p k , which we may assume > p k ^ If such that 

for every n > p k , we have | x n x p | < o* 

Accordingly we form the intervals J k : 

1. The interval x Pl | . . . x Pi -f- | call / t ; it contains all the x n 's 
for n>p lt in particular, therefore, the point x p ^. It therefore contains 
in whole or part the interval x Pt . . . # P2 + J, in which all x n 's 
with n >> p. 2 lie. As these points also lie in / x , they lie in the common 
part of the two intervals. This common part we denote 

2) by / a and may state: / 2 lies in f and contains all points x 
with n > p^. If in this result we replace p^ and p^ by p k _ and p k> 
and denote therefore 

k) by / fc the portion of the interval o:^ ^ . . . x p ^ + ^ which 

lies in / k-1 , we may then state: / fc lies in / fc-1 and contains all 
points x n with n > fc . 

4 (G51) 



86 Chapter II. Sequences of real numbers. 

But (J k ) is then a nest of intervals; for each interval lies in the 

k> 
preceding and the length of J k is <^ ~ . 

Now if f is the number thus determined, we assert, finally, that 

*-* 

In fact, if an arbitrary e > be now given, we choose an index r so 

large that < e. We then have 

& 

for every n > p r , | x n f | is " < e , 

since f, together with all x n 's for n > p r , lies in / r and the length 
of J r is < e. This proves all that was required 7 . 

Further examples and remarks. 

48. 1. The sequence 45, 3 can easily now be seen to be convergent For 

we have here, if n'>w: 

I 1 ( l)'-n-i\ 



If inside the bracket, we take the successive terms in pairs, we see (cf. later 
81 c, 3) that the value of the bracket is positive, so that 



It we now let the first term stand by itself and t ike the following- terms in 
pairs, we see further that 



Therefore | ay x n \ is <, provided n and n f are both > ;j The sequence 

u 

is therefore convergent. 

2. If # = (l -f- -- + H J , we have already seen in 46, 3 that (x n ) is 
not convergent. With the aid of the 2 nd main criterion, this is dcducible fiom 

the fact that here the e- condition is not satisfied for << . For however n 

It 

may be chosen, we have for n > w and n' 2 n (also therefore > w ) 



not therefore < 8. The sequence is therefore divergent, and in fact definitely 
divergent, since it is evidently monotone ascending. 

3. The previous example shows at the same time that the contrary of the 
fulfilment of the $- condition is the following (cf. also 1O, 12)": Not for every 
choice of s>0 can n be so assigned that the e- condition is then fulfilled; 
there exists on the contrary (at least) one particular number e > such that, 



7 We shall become acquainted with other proofs of this fundamental cri- 
terion. The proof given above leads immediately to the definition of the limit 
by the aid of a nest of intervals. A critical account of earlier proofs of the 
criterion may be found in A. Pnngsheim (Sitzungsber. d. Akad. Mlinchen, Vol. 27, 
p. 303. 1897). 



9. The two mam criteria. 87 

above every number n , however large (therefore infinitely often) two positive in- 
tegers n and n f may be found for which 



4. The 2 nd main criterion is now usually, after P. du Bois Reymond (Allge- 
meinc Funktionentheorie, Tubingen 1882), called the general principle of conver- 
gence. In substance, it originated with B. Bolzano (1817, cf. O. Stolz, Mathem. 
Ann. Vol. 18, p. 259, 1881) but was first made a starting point, as an expressly 
formulated principle, by A. L. Cauchy (Analyse algebrique, p. 125). 

Our main criterion may also be given somewhat different forms, 
which are sometimes more convenient in applications. We suppose 
the notation for the numbers n and n f so chosen that n > n, and 
therefore we may write n' = n + k , where k is again a positive integer. 
We then formulate thus the 

Second main criterion (Form la). 49. 

The necessary and sufficient condition for the convergence of the 
sequence (x n ] is that, given any e > 0, a number n = n (e) can always 
be assigned so that for every n > n and every k^>l we always have 



From this statement of the criterion we can draw further con- 
clusions. If we suppose quite arbitrary natural numbers k lf & 2 , . . . , k n , . . . 
chosen, then we must have, in view of the above, for every n > n 

I *+*- *!< 
But this implies that the sequence of differences 



forms a null sequence. In order to make ourselves more readily 
understood, we will call the sequence (d n ) for short a difference-sequence 
of (X M ). In it, d n is therefore the difference between x n and some de- 
finite later term. Our criterion may then be formulated thus: 

Second main criterion (2 nd form). 59. 

The sequence (#J is convergent if and only if every one of its 
difference-sequences is a null sequence. 

Proof. The necessity of this condition we have just proved; we 
have still to show that it is sufficient. We accordingly assume that 
every difference-sequence tends to 0, and have to show that (x n ) con- 
verges. But if (# n ) were divergent, there would, by 48, 3, exist a par- 
ticular number e such that above every number n Q} however large, 
two numbers n and n' = n -f- k would always he, for which the 
difference 

* was 



88 Chapter II. Sequences of real numbers. 

Since this must be the case infinitely often, "there would in contradic- 
tion to the hypothesis exist difference-sequences 8 which did not tend 
to 0; (x n ) must therefore converge, q. e. d. 

Remark. If (,v w ) is convergent, and we choose a particular difference-sequence 
(d n ), we therefore certainly have d n -> 0. But it should be expressly emphasized 
that from d n -> alone the convergence of (x n ) need not follow. On the contrary, 
for this, it is only sufficient that every arbitrary difference-sequence (not merely 
a particular one) should prove to be a null sequence. 

If for instance the sequence (1, 0, 1,0, ],...) is considered, every difference- 
sequence for which all k n y s (from some point onwards) are even numbers is a null 
sequence. Nevertheless the sequence in question is not convergent. Similarly in 

the divergent sequence (x n ) with x n 1 + J -f- . . . -f- evety difference-sequence 
for which the indices k n are bounded forms a null sequence. 

Extending somewhat further the last obtained formulation of the 
criterion, we may finally formulate it thus: 

51. Second main criterion (3 rd form). 

If "i> i'2 - > y> is any sequence of positive integers 9 which 
diverges to -|- GO, and k^ k 2 , . . . , k ni . . . are any positive integers (with- 
out any restriction), and if we again call the sequence of differences 

n ~ X 'n+ l *n X 'n 

for short a difference-sequence of (x n ), then for the convergence of (x n ) 
it is again necessary and sufficient that (d n ) is in every case a null sequence. 
Proof. That this condition is sufficient is obvious from the pre- 
ceding form of the criterion, since (d ri ) must, in the present case also, 
always be a null sequence when v n is chosen n. And that it is necessary 
may at once be seen. For if e is chosen > 0, there certainly exists, if 
(x n ) is convergent (v. Form la), a number m, such that for every n > m 
and every k ^ 1, we have 

I v Y I ^ 

I ^n+k ^n I ^- 

As v n diverges -> -|- GO, there must be a number n such that 
for n > H O , we have always v n > m. 

But then, by the preceding, we have, for n > w , always 



i. e. (d n ) is a null sequence, q. e. d. 



8 For if we denote by n it n 2 , j, . . . the infinite number of values of n for 
which that inequality (each time with a suitable choice of k) is assumed to be poss- 
ible, a difference-sequence would exist whose Wj th , w a th , 3 lh , . . . terms were all in 
absolute value ^ z () ^ 0. This could not then be a null sequence. 

& Equal or unequal, monotone or not monotone. 



10. Limiting- points and upper and lower limits. 89 

10. Limiting points and upper and lower limits. 

The concept of the convergence of a sequence of numbers as 
defined in the two preceding paragraphs admits of another, some- 
what more general mode of treatment, by which we shall at the same 
time become acquainted with some other concepts, of the utmost 
importance for all that comes after. 

In #9, 6, we have already illustrated the fact of a given sequence 
(# ) being convergent by saying that every e- neighbourhood (however 
small) of f must contain all the terms of the sequence with the possible 
exception of a finite number at most. There is therefore in eveiy 
neighbourhood of , however small, certainly an infinite number of 
terms of the sequence. For this reason, f may be called a limiting 
point or point of accumulation of the given sequence. Such points 
may, as we shall at once see, occur also in the case of divergent 
sequences, and we define therefore quite generally: 

Definition. A number shall be called a limiting point* of 
a given sequence (#J if every neighbourhood of f , however small, contains 
an infinite number of the terms of the sequence; or, therefore, if, for 
any chosen e > 0, there is always an infinite number of indices n 
for which 



Remarks and examples. 

1. The distinction between this defimt.on and the definition of limit given 53. 
in 5JO lies, as already indicated, in the fact that here | r n | <^F needs to be ful- 
filled not for every n after a certain point, but only for any infinite number 

of w's, and therefore in particular for at least one n beyond every w . On the 
other hand, in aceoi dance with &9, the limit of a conveigent sequence (.) 
is always a limiting point of the sequence. 

2. The sequence 6, 1 has the limiting; point 0; 6, 4, the limiting points 
and 1. (Every number which occurs an infinite number of times in a 
sequence (x n ) is ipio iacto a limiting point.) 6, 2, 7 and 11 have no limiting 
point; 6, 9 and 10 have the limiting point 1. 

3. We now form an example of more than illustrative significance: If p 
is an integer > 2, there is obviously only a finite number of positive fractions 
for which the sum of numerator and denominator = />, namely the fractions 

- I , .... . Of these we suppose left out all those which are not 

1 & p 1 

in their lowest terms, and now consider in succession all the fractions thus 
formed for p = 2, 3, 4, . . . . This gives the sequence, beginning with 

W 1,2, 1,3, -1,4, 2>-J.T ..... 

which contains all positive rational numbers. If after each of these numbers 
we insert the same number with sign changed and start with as first term, 
we have in the sequence 



* German: Jliiiifunffswert, Haitfungspunkt or Hdu/ungsstelle. (Tr.) 



90 Chapter II. Sequences ot real numbers. 

(b) 0, 1, -1, 2, -2, *-, -A, 3, -3, J-, -3.4, -4, 

A _A JL _JL JL 
2 ' "2*3' 3 * 4 ' ' ' ' 

thus formed obviously all rational numbers occurring, each exactly once. 

For this remarkable sequence every real number is a limiting point; for 
every neighbourhood of every real number contains an infinity of rational 
numbers (cf. p. 12). 

4. We shall frequently make use of the principle of arrangement in order 
applied in this example We therefore formulate it somewhat more generally: 
Suppose that for every k of the series k = 0, 1, 2, ... a sequence 

<fc) (fc) (&) /Jfe 1 P 1 

Jtfn > &< ) && t * * * (.** ~~ "| * ) &) * * '} 

is given. We can then, in many different ways, form a sequence (x n ) which con- 
tains every term of each of these sequences and contains it exactly once. 

The proof consists simply in assigning a sequence (x n ) which fulfils what 
is required. For this purpose we write the given sequences in rows one be- 
low the other: 



r (t) ^(fc) ..(*) 



The "diagonal" of this system which joins the element x^ to the element x^ 1 
then contains all elements x* for which A -f n = p, and no others. They are 
p 4- 1 in number. These terms we write down in succession, taking /> 0, 1, 2, . . ., 
and describe each of the diagonals say from bottom to top. Thus we obtain 
the sequence 

a:< > x (l) x (0} z (2) a: (1) a: (0) x< rE< 2) 

"'O ' ' 1 * * 1 *g * ' 1 ' * * * f 

which evidently fulfils the requirements. (Arrangement by diagonals*). 

Another arrangement frequently used is that "by squares". Here we 
first write the elements x^ , a;j p) , ..., x^ of the p ib row, then the elements 
standing vertically above x in the above system: as^"" 1 *, . . ., ad*. These 



groups of 2+ 1 terms are then written down in succession for p = 0, 1, 2, . . ., 
and this gives, beginning with 

:r (0) rr (1) x^ tf (0) x (2) x (2} x (2) x X M X (Q) 
^0 * ' 1 1 *0 ' 1 2 ' 2 f 2 ' 

the arrangement by squares**. 

If some or all of the rows in the above system consist of only a finite 
number of terms, or if the system consists of only a finite number of rows, 
then the arrangements described above undergo slight and immediately ob 
vious modifications. 



* German: Anordnung nach Schrdglinien. (Tr.) 
** German: Anordnung na<,h Quadraten. (Tr.) 



10. Limiting points and upper and lower limits. 91 



5. An example similar to 3. is the following: For every p^.2 there arc 
exactly />- 1 numbers of the form -r-H -- for which the sum of the positive 

/ ft Wl 

integers k and m is equal to p. If we suppose these written down in succession, 
for p = 2, 3, 4, . . . , we obtain the sequence 

33 4 4 j5 _5 ^ 

' 2 ' 2"' 3 ' ' Y' 4' 6 ' G' " ' 

We find that this sequence has the limiting points 0, 1, --, ^-, -j-, . .. 

and no others. 

6. As in the case of the limit of a convergent sequence, the limiting 
points of an arbitrary sequence may very well not belong to the sequence 
itself. Thus in 3. the irrational numbers, and m 5. the value 0, certainly do 
not belong to the sequence concerned. On the other hand, in both cases the 
value -J, for instance, is both a limiting point and a term of the sequence. 

We proceed to give a theorem which is fundamental for our 
purpose, due originally to B. Bolzano 10 , though its significance was first 
fully recognised by K. Weierstrass u . 

Theorem. Every bounded sequence possesses at least one limit- 54. 
ing point. 

Proof. We again determine the number in question by a suitable 
nest of intervals. By hypothesis there exists an interval / which 
contains all the terms of the given sequence (# tj ) To this interval 
we apply the method of successive bisection and designate as / x its 
left or right half according as the left half contains an infinite 
number of the terms of the sequence or not. By the same rule we 
designate a definite half of / t as / Q , and so on. Then the intervals 
of the nest (/J so formed all have the property that an infinite 
number of terms is contained in each, whilst to the left of their left 
endpoint there is always at most a finite number of points of the 
sequence. The point thus defined is obviously a limiting point; 
for if e > is given arbitrarily, choose from the succession of inter- 
vals J n one, say ] } , whose length is < K. The terms of (# M ), in 
number infinite, which belong to the interval / then lie ipso facto 
in the e- neighbourhood of , which proves all that we require. 

The similarity of the definitions of limiting point and limit (or 
limiting value) in spite of the difference emphasized in 53, 1 ("every 
limit is also a limiting point, but not conversely'') naturally creates 
a certain relationship between them. This is elucidated by the 
following 



10 Rein analytischer Beweis des Lehrsatzes, dafi zwischcn je zwey Werthen, 
die em entgegengesetztes Resultat gewUhren, wenigstens eine reelle Wurzel 
der Gleichung liege, Prag 1817. 

11 In Ins lectures. 



92 Chapter II. Sequences of real numbers. 

55. Theorem. Every limiting point of a sequence (a? n ) may be re 
garded as the limit of a suitable sub-sequence of (# n ). 

Proof. Since for every e > 0, we have, for an infinite number 
of indices, \x n || < e, we have, in particular, for a suitable n = k^, 
| x kl f | < 1; for a suitable n = 7e. 2 > A 1? we have similarly | x^ | < |, 
and in geneial, for a suitable n = k v > v -i 

1 

For the subsequence (x n ') == (x^ thus picked out, we have x n '+t;, 
as (xjt n |), by 26, 2, forms a null sequence. 

The proof of the theorem of Bolzano-Weierstrass gives occasion 
for a further most important remark: The intervals J n of the nest 
there constructed not only had the property that within them lay an 
infinite number of terms of the sequence (x n ), but as we noticed, 
they had the further property that to the left of the left cndpoint of 
any definite one of the intervals there lay always a finite number 
only of the terms of the sequence. From this, however, it follows 
at once that no further limiting point can lie to the left of the limiting 
point already determined. For if we choose any real number ' < , 
we have e = ^(f f ') < 0; choosing an interval J of length < e, we 
have the whole of the e- neighbourhood of the point ' lying to the 
left of the left endpoint of / and therefore containing only a finite 
number of terms of the sequence. Therefore no point ' to the left 
of f can be a limiting point of the sequence (#J, and we have the 

56. % Theorem. Every bounded sequence has a well- defined least limit - 
* ing point (i. e. one farthest to the left). 

If we interchange right and left in these considerations, we obtain 12 
quite similarly the 

57. Theorem. Every bounded sequence has a well-defined greatest limiting 
point 13 (i. e. one farthest to the right). 

These two special limiting points we will designate by a special 
name. 

58. Definition. The least limiting point of a (bounded) sequence will 
be called* its lower limit or Mines inferior. Denoting it by x, 
we write 

Hm re = x or lim inf x = x 



12 Or by reflection at the origin. 

13 These theorems are again obvious except in the case in which the sequence 
(x n ) has an infinite number of limiting points, like e. g. the sequence 53, 5. For 
among a finite number of values there must always be both a greatest and a least. 

* The German text has "untere Haufungsgrenze, unterer Limes, Limes inferior", 
(Tr.) 



10. Limiting- points and upper and lower limits. 93 

(possibly omitting the subscript n *<x>). // p, is the greatest li- 
miting point of the sequence, we write 

lirn x n = p, or lim sup x n = /* 
n-> n-> 

and call /t* the upper limit or limes superior of the sequence (# n ). 
We have necessarily always x^f*. 

Since every e- neighbourhood of the point contains an infinite 
number of terms of the sequence (zj, and since on the other hand 
only a finite number of terms of the sequence can lie to the left of 
the left endpoint of any such neighbourhood, K (or similarly fi) is also 
characterised by the following conditions: 

Theorem. The number x (or p) is the lower (or upper) limit of 59. 
the sequence (J if and only if, given an arbitrary e > 0, we have 
still for an infinite number of n's, 

x n < * + G ( or > f* ~~ e ) f 
but for at most a finite number 14 of n's, 

x n < x e (or > fi + z). 

Before we give a few examples and explanations of this theorem, 
let us complete our definitions for the case of unbounded sequences. 

Definitions. I. If a sequence is unbounded on the left, then we 60. 
will say that oo is a limiting point of the sequence ; and if it is 
unbounded on the right, we will say that -}-oo is a limiting point 
of the sequence. In these cases, however large we choose the number 
G > 0, the sequence has an infinity of terms 15 below G or above + G. 

2. If therefore the sequence (x n ) is unbounded on the left, then oo 
is the least limiting point, so that we have to write 

x = lim x n = co . 

n->+oo 

Similarly we have to write 

fji =. lim x n = + oo 



if the sequence is unbounded on the right. In these cases, nowever 
large we choose the number G > 0, we have, for an infinity of indices, 

x n< G or x n>+ G - 



* The German text has "obere Haufungsgrenze, oberen Limes, Limes superior". 
(Tr.) 

14 Or: There is an index n Q from and after which we never have x n < x e 
( > /* + e) but beyond every index n, there is always another n for which x n < x + e 

<>*-). 

15 Here therefore and similarly in the following definitions the portion 
of the straight line to the right of + G plays the part of an s-neighbourhood of 
+ oo, the portion to the left of G that of an s-neighbourhood of oo. 



94 



Chapter II. Sequences of real numbers. 



3. If, finally, the sequence is bounded on the left, but not on the 
right and (besides + oo j has no other limiting point, then -f- oo is 
not only its greatest, but at the same time its least limiting point, and 
we shall therefore equate the lower limit also to -f-oo: 

# = lima; n = +00; 

n->4-oo 

and correspondingly we shall have to equate the upper limit to oo, 

fj, lim x n = oo 

n->+co 

if the sequence is bounded on the right, but not on the left, and (besides oo) 
has no other limiting point. The former (latter) case occurs if and only 
if, given any G > 0, the inequality 

x n >G ( Xn< -G) 

holds for an infinite number of n j s, but the inequality 

x n <G (x n >~G) 

for at most a finite number of n's, that is to say therefore when x n -> + GO 
(-00), Cf. 63, Theorem 2. 

Examples and explanations. 

61. 1. In consequence of the preceding definitions, every sequence of numbers 

now of itself defines, absolutely uniquely, two determinate symbols * and p } 
(which may now, it is true, stand f or -f- oo or oo , and which bear the re- 
lation x ~5 M to one another 16 . And the following examples show that * and n 
may actually assume all finite or infinite values compatible with ihe in 
equality x < |i. 



In fact, 


for the sequence 


we 1 


iave 


1. (n)=l,2, 3, 4, ... 




+ 00 


+ 00 


2. (f<- 1 >")EE + 


l f a + 2 l . + | l . + 4 f ... 


a 


+ 00 


3. a, b, a, 6, a, fc, . . . 


(a<b) 


a 


b 


4. (a 4- t^")^*- 


1, a-H-g , ---, + {-, 


a 


a 


5. ((-!). *)==-!, 


4-2, -3, +4,... 


GO 


4-oo 


6. (fl-V-'^ssa- 


I,- f .-|,-4 f ... 


00 





7. ( W)=E2 1, -2, 


-3,... 


00 


00 



2. The reader should note particularly that it is not contradictory to 
theorem 59 that an infinite number of terms of the sequence should he to the 
left of x or to the right of p. Thus for instance we have, for the sequence 

' ^e. for the sequence -2, +-J, ~i f +A, _ |. f ... evidently 



18 We say of every real number that it is < + oo and > oo , and for 
this reason we occasionally designate it expressly as "finite". 



10. Limiting points and upper and lower limits. 95 

K s 1 , p s= -f- 1 > and both to the left of and to the right of fj, lies an 
infinite number of terms of the sequence (and between x and p lies no term of 
the sequence I). It is therefore not at all necessary that there should be only a 
finite number of terms of the sequence outside the interval * .../^. Theorem 
59 only asserts in fact that at most a finite number of terms of the sequence 
can lie to the left of s or to the right of /w-f-e. 

3. "A finite number of alterations" has no effect on the limiting points 
of a sequence none, in particular, on its upper and lower limits. These 
therefore represent an ultimate property of the sequence. 

4. Since a sequence (x n ) determines both the numbers x and /w with 
complete uniqueness, and since their value, in connection with our definition, was 
also enclosed by a well defined nest of intervals, we have herein a new legi- 
timate means of defining (determining, giving) real numbers: a real number 
shall henceforth also be regarded as "given", if it is the upper or lower limit of a 
given sequence. This means of determining real numbers is evidently still more 
general than the one mentioned in 41, 1 since now the sequence utilised need 
not even be convergent, or be subject to any restriction whatever 17 . 

As may be seen, in the light of 55, we have also the following 

Theorem. The upper limit /i of the sequence (x n ), /j = lim x n , is 62. 
also, in the case JLI =j= oo, characterised by the two following conditions : 

a) the limit ' of every convergent sub-sequence (x n f ) of (a?J is 
invariably < yw ; but there exists 

b) at least one such stib- sequence, whose limit is equal to //; 
and correspondingly for the lower limit. 

A concept related to that of the upper and lower limits, though 
one which must be sharply distinguished from it, is the concept of 
upper and lower bounds of a sequence (# M ), which is derived from 
the following consideration: If no term of the sequence lies to the 
right of // = lima; n , so that for every n, #<[/*, then /i is a bound 
above (8, 4) of the sequence, but one which cannot be replaced 
by any smaller one; fi is therefore in this case the least bound above. 
But such a least bound also exists if there is a term of the sequence 
> p. For if for instance x is > /i, then by 59 there is certainly 
only a finite number of terms in the sequence which are ^> x p , and 
among these there is necessarily (8, 5) a largest one, say x . We 
then have, for every n, x n <^ x , i. e. x is a bound above of the se- 
quence, but again one, which cannot be replaced by any smaller 
one. Every sequence bounded on the right therefore possesses a definite 
least bound above. Since, in the same way, every sequence bounded 



17 Whereas therefore a nest of intervals (with rational cndpoints) was at 
first to count as the only means of defining a real number, we have now 
deduced quite a series of other means which we now admit as equally legi- 
timate: Radix fractions, Dedekind sections, nests of intervals with arbitrary 
real endpoints, convergent sequences, upper and lower limits of a sequence In 
all these cases, however, we saw how at once to assign a nest ol intervals 
(with rational endpoints) which encloses the given number. 



96 Chapter II. Sequences of real numbers. 

on the left must have a definite greatest bound below, we are justified 
in the following 

Definition. We define as the upper bound * of a sequence bounded 
on the right the least of its bounds above (invariably determinate by our pre- 
liminary remarks), and similarly as the lower bound * of a sequence 
bounded on the left the greatest of its bounds below. A sequence unbounded 
on the right is said to possess the upper bound + <x>, one unbounded on the 
left, to possess the lower bound oo . 

The concepts of upper and lower limits are due to A. L. Cauchy (Analyse 
alg<5hnque, p. 132. Paris 1821) but were first made generally known by P. du Bois- 
Reymond (Allgemeine Funktionentheorie, Tubingen 1882). Both nomenclature 
and notation have remained variable up to the present day. The particularly con- 
venient notation hm and hm used in the text was introduced by A. Pnngsheim 
(Sitzungsber. d. Akad. zu Munchen, vol. 28, p. 62. 1898), to whom the designations 
of upper and lower limits are also due **. 

It should be expressly pointed out again that the upper (and similarly the 
lower) bound is not necessarily determined by the tail-end of the sequence. Thus 

the upper bound of the sequence f - J is 1, and is obviously altered if the first term of 
the sequence is altered. 

The previous investigations of this paragraph were carried out quite 
independently of the considerations on convergence of 8 and 9, and 
give us, for this very reason, a new means of attacking the problem of 
convergence A of 9. It may be shewn that the knowledge of the lower 
and upper limits x and /x of a sequence the knowledge, therefore, of 
two numbers whose existence is a priori ensured entirely suffices to 
decide whether or how the sequence converges or diverges. We have 
in fact the theorems 

63* Theorem 1 . The sequence (x n ) is convergent if and only if its lower and 
upper limits x and p are equal and finite. If A is the common value (different, 
therefore, from + GO or GO) of x and /z, then x n -> A. 

Proof, a) Let x = // and their common value =- A. Then, by 59, 
given e, there is at most a finite number of w's for which 



* German: Obere, untere Grenze (frontier). The word "frontier" is not usual 
in English writings, though sometimes found in French. The distinction between 
any bounds and the narrowest bounds is emphasized chiefly by the article the in the 
latter case; the upper bound and the lower bound always denoting the latter. For 
fear of ambiguity, however, the word "bound" in the general sense is avoided as 
much as possible in English text-books. (Tr.) 

** We have omitted reference here to the untranslated term "Haufungsgrenze" 
of the German text: "Die im Texte benutzte ausfuhrlichere Bezeichnung Hdufungs- 
grerize soil nur den Unterschied zu der soeben defimerten unteren und oberen 
Grenze starker betonen". (Tr.) 



10. Limiting points and upper and lower limits. 97 

and similarly at most a finite number of #'s for which 



For every n ^ some w , we therefore have 

A < # n < A + , or | # n A | < e, 

i. e. the sequence is convergent and A is its limit. 

b) If, conversely, lim x n A, then, given e > 0, we have, for every 
n > n (s), A E < # n < A + Therefore the inequality 
# n <A + (>A-e) 

is satisfied for an infinite number of 's, but the inequality 
x n < A (> A + ) 

for at most a finite number of n's. The former inequalities (with <) imply 
Y. = A, the latter /z ~ A. This proves all that we required. 

Theorem 2. The sequence (x n ) is definitely divergent if, and only if, 
its upper and lower limits are equal, but have the common value 18 + oo or 
oo. In the former case it diverges to + oo, in the latter to oo. 

Proof, a) If x = ft + oo (or oo ), then this signifies, by 
60, 2 and 3, that, given G > 0, we have from and after a certain w 

* n > + G (<-G); 

we therefore then have lim x n = + oo ( oo). 

b) If, conversely, lim x n ~ + oo, then, given G > 0, we have for 
every n after a certain // , x n > -f G; therefore 

the inequality x n < + G is satisfied for at most a finite number of 
n's, whereas 

the inequality x n > + G is satisfied for an infinite number of w's. 
But this implies, by 60, that x + oo and ipso facto also fj, = + oo. 
Therefore x /x + oo. And in precisely the same way we show that 
if lim x n = oo , then x ~ p = oo . 

From these two theorems we at once deduce further: 

Theorem 3. The sequence (x n ) is indefinitely divergent if and only if 
its upper and lower limits are distinct. 

The content of these three theorems provides us with the following 

Third main criterion for the convergence or divergence of a sequence: 64. 

The sequence (x n ) behaves definitely or indefinitely, according as its 
upper and lower limits are equal or distinct. In the case of definite behaviour, 
it is convergent or divergent, according as the common value of the upper 
and lower limits is finite or infinite. 



18 In occasionally speaking of the symbols -f- and oo (which are cer- 
tainly not numbers) as "values", we make use of a mere verbal licence, to which 
no importance should be attached. 



98 



Chapter II. Sequences of real numbers. 



The following table gives a summary of possibilities as regards the 
convergence or divergence of a sequence and of the designations used 
in this connection. 



x = p , both = A -+- 00 


x = // = -f OO or oo 


* o 


convergent (with limit A) 

lim y n H 

(n->+) 

*.-** 

(for n -> + 00} 


divergent (or possibly: con- 
vergent) towards (or: with 
limit) -f OO or oo; in both 
cases: definitely divergent. 

lim x n -f oo or oo 
, 4 ~>4-OO or OO 


indefinitely 
divergent 


convergent 


divergent 


definite behaviour 


indefinite 
behaviour 



11. Infinite series, infinite products, and infinite 
continued fractions. 

A numerical sequence can be specified in the most diverse ways; 
this is sufficiently evident from the examples which have been given. 
In these, however, for the most part, the n th term x n was for conveni- 
ence given by an explicit formula, enabling us to calculate it at once. 
This is by no means the rule, however, in the applications of sequences 
in all parts of mathematics. On the contrary, the sequences to be examined 
generally present themselves indirectly. Besides several less important 
kinds, three types especially come into consideration; of these we will 
now give a brief discussion. 

66. I. Infinite series. These are sequences given in the following 
way. A sequence is at first assigned in any manner (usually by direct 
indication of its terms), but without being intended itself to form the 
object of discussion. From it a new sequence is to be deduced, whose 
terms we now denote by s n , writing 

s o == a o> s i = a o + a \\ ^2 a o + a i + #2> 
and generally 

s n "= a o + #1 -1- a 2 -f . . . 4- a n (n = 0, 1, 2, . . .). 

It is the sequence (s n ) of these numbers which then forms the object of 
investigation. For this sequence (s n ) we use the symbolical expression 
ft 7. a) a 4- ^ 4 a 2 4 . . . 4 a n 4- . . . 

or more shortly 

or still more shortly and more expressively: 



n-O 



11. Infinite series, infinite products, and infinite continued fractions. 99 

and this new symbol we call an infinite series \ the numbers s n are 
called the partial sums or sections * of the series. We may therefore 
state the 

Definition. An infinite series is a symbol of the form 68. 

QC 

Za n or ~|-0 1 l +*2 + -" 

W--0 

or 

00 + a l + a 2 + f a n + ' 

by which is meant the sequence (s n ) of the partial sums 

s n - *o + i + + <*n (n = 0, 1, 2, . . .) 

\ 

Remarks and Examples. 
1. The symbols 

00 CO 00 

fli -1 ^ " n ; -I- fli -I . . . -f tf m 4- a n 

M - M M j- 1 

00 

shall be entirely equivalent to Ea n . The index n is called the index of summation. 

w=- 
Of course any other letter may take its place 

GO CO 

-27 a v \ a {} -f i -f <** + 



The numbers a n are the term* of the series. They need not be indexed from on- 
wards. Thus the symbol 

00 

27 a A denotes the sequence (a lt a^ -f a 2 , a l -f a 2 + a 3t . . .) 
and more generally, 



denotes the sequence of numbers s p , s v+l , s P+Zt . . . given by 
s n = a p + a v+ 1 + + n for n ^ P,P -I- ! 

Here p may be any integer ~ 0. Finally we also write quite shortly 

a v 

when there is no ambiguity as to the values which the index of summation has to 
assume, or when this is a matter of indifference. 

2. For H = 0, 1, 2, . . . let a n be 



e ) ^ ""; = (- v n > s) - (- i) n (2 + i); 

=4= 0, - I, ~ 2, ... 



* German : Teilsummen oder Abschnitte. 



]00 Chapter II. ' Sequences of real numbers. 

We are then concerned with the infinite series 

> J o i Esl + 7 + T + + "' : 

o> 1 111 

1T2 + 2^ + 3^4 + * " ? 



c ) i + i + i_j-... ; d) 0+1 + 2 + 3H ; 

^ r ^ *"+ l ~ * ~~ ~2 + "if ~ 4~ ~^ ' 

^(-1)^=1-1 + 1-1 + ; g) 1-3+5-7+9-. 

, ^ 1 1.1.1 



And we have in these simply a new and as will be seen, very con 
venient symbol for the sequences (s , s , s a . . . .) for which s n is 



b ) ^TTo + oT^ + sTZ 



. 2 ^ 2 - 3 ^ 3 . 4 ^ (n + 1 ) (* + 2) 



n(n+l). 
c; = M + 1 ; d) = - 2 ; 



( cf - 45 > 3 and 48,1); 



f) = H 1 - (-l) n+1 ] (see footnote 19); 

g) =(-l) n ("+ 1); 



"' ~ a (a + 1) T (a + 1) (a + 2) ^ ' ' ' ^ (a + n) (a + n + 1) 

/I 1 \ + /I 1_\ + _. + /. _ * * 

I -. 1 

a a + n + 1" 

3. We emphasise above all that the new symbols have no significance in them- 
selves. Addition, it is true, is a well-defined operation, always possible, with regard 
to two or any particular number of values, in one and only one way. The partial 
sums s n therefore, however the terms a n may be given, have under all circumstances 

definite values. But the symbol fa n has in itself no meaning whatever, not 

n-O 

even in a case as transparent, seemingly, as 2 a ; for the addition of an infinite number 
of terms is something quite undefined, something perfectly meaningless. It must 
be considered substantially as a convention that we are to take the new symbol 
to mean the sequence of its partial sums. 

lu Equal to 1 or 0, according as n is even or odd. 



1 


1 


1 


1 


i 


1 


1 


2' 


y 


5' 


r 


11' 


13' 


17' 


1 


i 


1 


i 


i 


1 


1 


3' 


7' 


8' 


ir>' 


24' 


2<>' 


31' 



11. Infinite series, infinite products, and infinite continued fractions. 101 

4. The reader should take particular care to distinguish a series from a se- 
quence 20 : A series is a new symbol for a sequence deducible by a definite rule from it. 

5. The symbol with the sign of summation "JL can of course only be used 
when the terms of the series are formed by an explicitly assigned law, or when a 
particular notation is available for them. If for instance the numbers 



or the numbers 



are to be the terms of a series, we shall have to use the explicit symbols 



and 

3 '" 7 + 8 + 15 + 24 + 2(3 + 3l + ' ' * 

and write down as many terms as necessary, till we may assume that the reader 
has recognised the law of formation. For the first of these two series, this may 
be expected after the term ^ : the terms arc the reciprocals of the successive prime 
numbers. In the second example it will not be known even after the term } f how 
to proceed : the denominators of the terms are meant to be the integers of the form 

P q - 1 (P,q=- 2, 3, 4, . . .) 

in order of magnitude. 

We now adopt the further convention that all expressions used to 
describe the behaviour, in respect of convergence, of a sequence are to 
be carried over from the sequence (s n ) to the infinite scries 2 a n itself. 
Thereby we obtain in particular the following 

Definition. An infinite series 2 a n is said to be convergent, definitely 69. 
divergent or indefinitely divergent, according as the sequence of its partial 
sums shows the behaviour indicated by those names. If, in the case of con- 
vergence, s n -> s, then we say that s is the value or the sum of the convergent 
infinite series and we write for brevity 

cr 

E a v = s, 

v -0 

00 t 

so that a v denotes not only the sequence (s n ) of the partial sums, as laid down 

v~-0 

in the preceding definition, but also the limit lim s n , when this exists 2i . In 
the case of definite divergence of (s n ), zve also say that the series is definitely 
divergent and that it diverges to + oo or oo according as s n -> + 
or -> oo. If finally, in the case of indefinite divergence of (s n ), Y. and p 
are the lower and upper limits of the sequence, then we also say that the series 
is indefinitely divergent and oscillates between the (lower and upper) limits 
Y. and fji. 



20 The additional epithet of "infinite** may be omitted when obvious. 

21 Exactly as we may now, in accordance with the footnote 9 to 41, 1, write 



102 Chapter II. Sequences ot real numbers. 

Remarks and examples. 
1. It is at once obvious that the series 68, 2 a, b and h converge and have 

for sums + 2, 1 and respectively; 2c and d are definitely divergent towards 
a 

+ oo ; 2 e is convergent and has for sum the number s defined by the nest 2a 
( s ve-i\ S2k)', 2 f , finally, oscillates between and 1, and 2g between oo and 
H-oo. 

2. As regards the term sum the reader must be expressly cautioned about 
a possible misunderstanding: The number s is not a sum in any sense previously 
in use, but only the limit of an infinite sequence of sums', the equation 

27 = s or a + a L -\ + H = s 

n-O 

is therefore neither more nor less than another way of writing 

lim s n = s or s n > s . 

It would therefore seem more appropriate to speak not of the sum but of the 
limit or value of the series. However the term "sum" has remained in use 
from the time when infinite series first appeared in mathematical science and 
when no one had a clear notion of the underlying limiting processes or, 
generally, of the "infinite" at all. 

3. The number 5 is therefore no sum, but is only so named, for the sake 
of brevity. In particular, calculations involving series will in no wise obey 
all the rules for calculating with sums. Thus for instance in an (actual) sum 
we may introduce or omit brackets in any manner, so that for instance, 

1 _ i + i _ i = (i _ i) + (i _ i) = i _ (i _ i) _ i = o. 

But on the contrary 

J; ( 1)"S3 1 1+1 1+ 

n=o 
is not the same thing as 

(1 - 1) + (1-1) + (1-1)+...= + + 0+ 
or as 

1- (1-1) -(1-1) -(1-1) ==1-0-0-0 

Nevertheless, calculations involving series will 'have many analogies with those 
involving (actual) sums. The existence of such an analogy has, however, in 
every particular case to be first established. 

4. It is also, perhaps, not superfluous to remark that it is really quite 

00 J 

paradoxical that an infinite series, say J5o~" should possess anything at all 



22 
1 . 



S that \< 5 a<*6<---; similarly from s 2jfe 



- gTr+r we deduce that 5 > 5 > 5 > Finallv 

*2k~~ $ 2k-i = ~^9TTT> if e> P ositi ve and tending to 0. By 46, 4 and 41, 5, 



we have s n ~ * (s^fc-i | 5 2Jt)' ^' ^ c ^ an< * ^j ** where these considerations 
are generalised, 



11. Infinite series, infinite products, and infinite continued fractions. 103 

capable of being called its sum. Let us interpret it in fourth- form fashion by 
shillings and pence: I give some one first 1 s. f then 1 / 2 s., then */ 4 s., then */ 8 s., and 
so on. If now I never come to an end with these gifts, the question arises, whether 
the fortune of the recipient must thereby necessarily increase beyond all 
bounds, or not. At first one has the feeling that the former must occur; for 
if I continue constantly adding something, the sum must it seems ulti- 
mately exceed every value. In the case under consideration this is not so, 
since for every n 

s n = 1 + 2 + 4 -f . . . + 2 7j , - 2 - 2n remains < 2. 

The total gift therefore never reaches even the amount of 2 s. And if we now, in 
spite of this, say that 2! 2 n ** equal to 2, then we are really only using an abbreviated 

expression for the fact that the sequence of partial sums tends to the limit 2. Cf. 
the well-known paradox of Achilles and the tortoise (Zenon's paradox). 

5. In the case of definite divergence we can also, in an extended sense, speak 
of a sum of the series, which then has the "value" +00 or -co. Thus for instance 
the series 



is definitely divergent, and has the "sum" hoc, because by 46, .3 its partial 2S sums 
-* -f- oo . We write for short 

oo I 



n=l 
which is only another mode of writing for 



6. In the case of an indefinitely divergent series however, the word 
"sum" loses all significance. If in this case litn s n x and lini s n fi (> x), 
then we said, in the above, that the series oscillates between x and, //. But it 
must be carefully noted (cf. 61, 2), that this refers only to a description of the 
ultimate behaviour of the series. In fact the partial suras s n need not lie between 
x and p. Thus, for instance, if a == 2, and for w]>0, 



\ve can at once verify that 

* = + + + = (- i)"jqrj ( = o, 1,2, ...) 

and therefore lim s n = 1 , lim s n = -f- 1 . But all the terms of the sequence (s n ) 



2a If therefore the payments discussed in 4. have the values 1 s., l / s., 
*/ 8 s., l / 4 s.,... the fortune of the recipient now does increase beyond all 
bounds. It is not at first at all obvious to what it is due that in the case 4, the 
sum does not exceed a modest amount, whereas in the present case it exceeds 
every bound. The divergence of this series was discovered by John_J$ejyuiuUL^ 
and published by James Bernoulli in 1689; but seems to have been already known 
to Leibniz m 1673. 



11. Infinite series, infinite products, and infinite continued fractions. 105 

they must be taken, in a precisely similar manner to the infinite series just 
considered, simply as a new symbolic form for the well-defined sequence 
of the partial products 

/>i = r, Pz -^ u\ " 2 ; ; /> = *i 2 M ; - - 

However we shall later, with reference to the exceptional part played by 
the number in multiplication, have to make a few special conventions 
in this connection. 

1. If for instance we have, for every n ^ 1, n n - -, - ., then the infinite 
product 

fr > + 1 ) 2 22 32 42 52 ( n i- ! ) 2 

, n~(iT+ 2) r 1 3 '2-4* 3 5 4 - ' ' ' n (n |- 2) ' ' ' 
n -- L 

represents the sequence of numbers 

4 2-3 2-4. 2(w |- 1) 

Pi = %', Pz = - 4 ~, />3 = - r> - ..... />M ~~ w ~:p~2 ~ - - 

2. The additions and remarks just made in I retain mutatis mutandis their 
significance here. All further details will be considered later (Chapter VII). 

in. Infinite continued fractious. Here the sequence (v w ) under examination 
is formed by means of two other sequences (,, 2 . . .) and (6 , b lt . . ), by writing: 



#0 - - 



'V 



and so on, x n , in the general case, being deduced from x n ,_ l by substituting for 
the last denominator & n _ t of .v n _, the value b n _ l -f , ", and proceeding thus ad 
infitntum. For the "infinite continued fraction" so formed the notation 



is fairly usual. The most natural notation for it would be 



71-1 

Here also a few special conventions have to be made, to take the fact into account 
that in division the number again plays an exceptional part. The subject of con- 
tinued fractions we shall not, however, enter into in this treatise 24 . 

Of the three modes of assigning a sequence discussed above, 
that by infinite series is by far the most important for all applications 
in higher mathematics. We shall therefore have to deal mainly with 
these. Since series merely represent sequences, the introductory 
developments of 9 provide us with the points of view from which 
a given series will have to be investigated: Together with the 
problem A which concerns the convergence or divergence of a given 
series, we have again the harder problem B 9 which relates to the sum 
of a series already seen to be convergent. And for exactly the same 

24 A complete account of their theory and applications is given by O. Perron, 
Die Lehre von den Kettenbruchen, 2 nd Edition, Leipzig 1929. 



106 Chapter II. Sequences of real numbers. 

reasons as we there explained, the second problem will generally 
present itself in the form: A series 2 a n is known to be convergent; 
does its sum coincide with that of any other series or with the limit 
of any other sequence, or does it stand in any assignable relation tb 
such another sum or limit? 2B 

Since the problem A is the easier and since in contradistinction 
to problem B it admits of a methodical solution, we will proceed 
in the first place to give our attention to this in detail. 



Exercises on Chapter II 26 . 

9. Prove Theorems 15 to 19 of Chapter I by the method indicated in 
the footnote to 14. 

10. Prove in all details that the ordered arrangement, defined by 14 
and 15, of the system of all nests of intervals, obeys each of the theorems of 
order 1. (For this cf. 14, 4 and 15, 2.) 

11. Carry out the details of the proof required on p. 32; i, e. prove that 
the four modes of combining nests of intervals, defined by 16 to 19, obey 
all the fundamental laws 2. 

12. For fixed 3, with 2 < 1, 



13. For arbitrary positive a and /?, 

(loglostt)"^^ 
(log nf 

Vs~ * 

14. Which of the two numbers (--} and f ^~2j 2 is the larger? 



25 Thus e.g. the series l + l-f +-.+ . ..-J r+"* will easily be 

6\ o 1 nl 

shown to converge. How do we see that its sum coincides with the number * 

/ \\n 
given by the sequence I 1 -| -- 1 ? Similarly we may very soon convince our- 

\ n J 

selves of the convergence of the two series 

l + l + -+... + +... and 1-.. + ..-. + -.... 



O 

But how do we discover that if s and s' are their sums, $ = ---s' 9 and 4s' = ;r 

o 

(i. e. equal to the limit in a third limiting process, which occurs in relation to 
the circle; cf pp. 200 and 214)? 

20 In several of the following exercises, a few of the simplest results 
with regard to logarithms, and the numbers e and yi r are Assumed known, 
although they are only deduced later on in the text. 



Exercises on Chapter 11. 107 

15. Prove the following limiting relations: 



r * 

Ln-f- 



Note that in examples a) to d) a term by term passage to the limit gives 
a wrong result, whereas in e) it gives a correct result 

16. Let a be >0, x l > and the sequence (X L) x^ t . . .) defined by the 
convention that for n 



ft) 

b) 
' 



Shew that in case a) the sequence tends monotonely to the positive root of 
jc^ x a = 0; that in case b) it tends to that of x* + x a = 0, but with x n 
lying alternately to the left and to the right of the limit 

17. Investigate the convergence or divergence of the following sequences' 

a) X Q , Xi arbitrary; for every n>2, # n = j- (&n-i H-a-a)t 

b) X Q , x it . . ., x p -. t arbitrary; for every n > p 



,-,+ + Xn-p 

1 

*i a ai * a p given constants, e. g. all equal to ~ j, 



c) x Q1 x l positive; for every w>2, x n ~ \x n ^ l a? w - 3 ; 

2:r .r 

d) x , XL arbitrary; for every n^2, x n ^-~* '*~ 9 -. 

18. If in Ex. 17, c we put, in particular, # = 1, a? 1 = 2, then the limit of 

8 

the sequence is = "y/ 4 . 

19. Let a lt a a , . . ., a p be arbitrary given positive quantities and let us 
write, for n = 1, 2, . . . 

^ ^ 1^ -* = s n and Vs7 = a; M . 



J03 Chapter IT Sequences of real numbers. 

Show that x lt always increases monotonely and if one, say a lf of the given 
numbers is greater than all the others, then x n -> a as limit. 

(Hint: First show that 



20. Somewhat similarly to last Ex., write 

n . n _ n t __ 

* - " = s n ' and (s n ') = x/ 

and show that a:,/ decreases monotonely and -* ya, a. 2 ... a p . 

21. Divide the interval a ... & (0 << a < 6) into M equal parts; let or = a ( 
Xj, x 9 , . . ., x n = b denote the points of division. Show that the geometric mean 



. . . . n -I- 1 b IL a 

and the harmonic mean -^ ^ 1 "^ log 6 log a" 

22. Show that in the case of the general sequence of Ex 5 



- "(-/*)" 

JJ. Set a;>^0 and let the sequence (.r n ) be defined by 



For what values of x is the sequence convergent? (Answer: If and only if 

1 



24. Let lim# n = *, hm =/*, Hm x n ' x', \}mx n ' = f/. What may be 
said of the position of the limits for the sequences 



Discuss all possible cases. 

25. Let (a w ) be bounded and (with the possible exception of a few initial 
terms) let us put 



Then (a n ) and (/?) have the same upper and lower limits. The same holds 
if we put 



. _ _. 

n nlogn/ n nlogn 

26. Does Theorem 43, 3 still hold if 9=0 or = + oo? 

27. If the sequences (x n ) and (y n ) given in 43, 2 and 3 are monotone, 
then so are the sequences (#') and (y n ') mentioned there. 



Exercises on Chapter II. 109 

28* If the sequence (-j~j is monotone and & n >>0, then the sequence 
having w th term 



H 



is also monotone. 
29. We have 



provided the limit on the right exists and (a,,) and (&) are null sequences, 
with (fc n ) monotone. 

3O. For positive, monotone c n 's, 

XI H ----- \~Xn t 



implies 

c a? + c t x l H ----- h c n .r n _^ 



provided * is bounded and C n ~> -f oo . (Here C n = c -f c t -f- -f c n .) 
\ ts n / 

31. If 6 n >0, and 6 + ^H ---- +& = ^-> + oo, and a^-^ + oo, then 

i " (v n +i ~ X n ) ->| 
6 n 

implies 

tftp * I- &i * t + ' ' + ^n Vr"| __ v > 
* nfi *o+ir+--- + ^n J ^ 

32. For every sequence (# n ), we invariably have 



(Cf. Theorem 161.) 

33. Show that if the coefficients a^ t of the Theorem of Toeplitz 43, 5 
are positive, then for tft/ery sequence (x n ) the relation 

lim x n ^ lim .T,/ < hm x n 
holds, where a?/ = a n o; + a n ^ + ---- hn*- 
-/
