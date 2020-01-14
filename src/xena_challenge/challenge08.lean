example (G : Type) [group G] (g h k : G) : (g * h * k⁻¹)⁻¹ = k * h⁻¹ * g⁻¹ :=
begin
  simp [mul_assoc]
end
