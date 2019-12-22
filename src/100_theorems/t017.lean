import data.complex.exponential

open complex

theorem t017 : Π (n : ℕ) (z : ℂ), (cos z + sin z * I) ^ n = cos (↑n * z) + sin (↑n * z) * I
:= cos_add_sin_mul_I_pow
