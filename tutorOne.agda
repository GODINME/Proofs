{--
  PROOFS : Section A
  Advanced Functional Programming in Agda 
  Tutorial 1
--}

-- Constant Function

const : (A : Set)(B : Set) → A → B → A
const A B a = λ b → a

const' : (A B : Set) -> A -> B -> A
const' A B a = \ b -> a

const'' : {A B : Set} → A → B → A
const'' a = λ _ → a

-- List Abstract Data Type and their Specification

data List (X : Set) : Set where
  [] : List X
  _::_ : List X -> List X -> List X


append : {X : Set} -> List X -> List X -> List X
append [] ys = ys
append (x :: xs) ys = x :: append xs ys



