
⍝
⍝ This is a first attempt to solve a small programming exercise
⍝

∇ z←stockprice a
  m←a∘.-a
  id←(⍳⍴a)∘.>⍳⍴a
  max←⌈/((((⍴a)×⍴a)⍴id) / ((⍴a)×⍴a)⍴m)
  z←1⌽⊃⍸max⍸m×id
∇

⍝
⍝  A small programming exercise of verifying if a
⍝  number is present in every consective segment of
⍝  the specified size
⍝
⍝  For example:
⍝    element = 10
⍝    size = 2
⍝ This is true for:
⍝    array = 10,3,2,10,45,10
⍝ 
⍝ And not true for
⍝    array = 0,3,2,10,45,10
⍝

∇ z←array arraysegments args
  number ← args[1]
  size ← args[2]
  z ← ∧/ ({number∊⍵} ⍤1) (size, ((⍴ array) ÷ size)) ⍴ array
∇
