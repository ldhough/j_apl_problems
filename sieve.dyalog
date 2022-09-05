#!/usr/bin/env /usr/local/bin/dyalogscript

⍝ Attempt 1 
⍝ (1↓⍳30)~⊃∪/{1↓⍵×⍳⌊30÷⍵}¨1↓⍳30

⍝ Attempt 2
⍝ m←30⋄r←1↓⍳m⋄r~⊃∪/{1↓⍵×⍳⌊m÷⍵}¨r

⍝ As a function
sieve←{⍵{⍵~⊃∪/⍺{1↓⍵×⍳⌊⍺÷⍵}¨⍵}{1↓⍳⍵}⍵}

⍞←sieve⎕

