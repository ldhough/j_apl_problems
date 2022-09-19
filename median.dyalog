#!/usr/bin/env /usr/local/bin/dyalogscript

arr1←1 5 8
arr2←2 7 9
⍝ 1 2 5 7 8 9

a3←1 2
a4←3 4

⍝ n is left, arr is right
m←{h←⌈⍺÷2⋄0=2|⍺:((h⌷⍵)+((h+1)⌷⍵))÷2⋄h⌷⍵}

⍝ arrays on left, n on right
median←{
  a←⊃⍺
  b←2⊃⍺
  n←⍵
  h←⌊n÷2
  m1←n m a
  m2←n m b
  n=0:0
  n=1:(⊃a+⊃b)÷2
  m1=m2:m1
  m1<m2:(h↓a) ((h+1)↑b)∇n-h
  1:((h+1)↑a) (h↓b)∇n-h
}

result←arr1 arr2 median (≢arr1)
⍞←result
⍝ 6
result2←a3 a4 median (≢a3)
⍞←result2
⍝ 2.5
