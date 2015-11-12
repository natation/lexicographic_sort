# Lexicographic Sort in Ruby

#### Runs in O(kn) time, where k = max string length and n = number of strings
##### Analysis:
1. Line 21: n + n
2. Line 23: Max string length, k times we will do:
  * Line 25: L (26 characters max: a-z) +
  * Line 30: n +
  * Line 40: 2 * L * n
3. So it takes 2n + k(L + n + 2Ln), which is O(kn)
