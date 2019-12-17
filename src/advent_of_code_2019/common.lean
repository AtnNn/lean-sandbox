-- Some declarations borrowed or adapted from https://github.com/digama0/advent-of-code/blob/lean-3.4.1/common.lean

import system.io data.buffer.parser data.buffer

universe u

open parser

class read (α : Type) := (parser : parser α)

def batch {α β : Type} [reader : read α] [has_to_string β] (f : α → β) :=
  io.stdin >>= io.fs.read_to_end >>=
  λ (buffer : char_buffer) , match parser.run reader.parser buffer with
    | sum.inl error := io.print error
    | sum.inr res := io.print (f res)
  end

instance nat.read : read ℕ :=
⟨string.to_nat <$> many_char1 (sat char.is_digit)⟩

instance int.read : read ℤ :=
⟨(ch '-' *> ((λ x, -↑x) <$> nat.read.parser)) <|> coe <$> nat.read.parser⟩

structure lines (α : Type) := (list : list α)

instance lines.read {α : Type} [reader : read α] : read (lines α) :=
⟨lines.mk <$> many (reader.parser <* ch '\n')⟩

def both {α β γ : Type} (f : α → β) (g : α → γ) (x : α) : β × γ := ⟨f x, g x⟩
