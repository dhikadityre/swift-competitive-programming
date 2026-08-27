# Valid Parentheses
* **Category:** Stack
* **Difficulty:** Easy

Given a string `s` containing just the characters `'('`, `')'`, `'{'`, `'}'`, `'['` and `']'`, determine if the input string is valid.

An input string is valid if:
1. Open brackets must be closed by the same type of brackets.
2. Open brackets must be closed in the correct order.
3. Every close bracket has a corresponding open bracket of the same type.

## Example 1
**Input:** s = "()"
**Output:** true

## Example 2
**Input:** s = "()[]{}"
**Output:** true

## Example 3
**Input:** s = "(]"
**Output:** false

## Clues & Formulas

* **Metode Bruteforce**: Lakukan penggantian string secara berulang untuk pasangan tanda kurung terkecil yang valid (seperti `()`, `[]`, `{}`) dengan string kosong `""` hingga tidak ada lagi pasangan yang bisa diganti. Jika string akhir kosong, maka valid.
  * *Kompleksitas*: Waktu $O(n^2)$, Ruang $O(n)$.
* **Metode yang Direkomendasikan**: Gunakan Stack. Jika menemukan karakter buka kurung, masukkan ke stack. Jika menemukan karakter tutup kurung, periksa apakah stack kosong atau karakter teratas stack tidak cocok dengan tipe kurung bukanya.
  * *Kompleksitas*: Waktu $O(n)$, Ruang $O(n)$.
* **Metode Lain**: Gunakan rekursi (Recursive Descent Parsing) untuk mengevaluasi struktur kurung yang tersarang.
  * *Kompleksitas*: Waktu $O(n)$, Ruang $O(n)$ call stack.

## Constraints
* `1 <= s.length <= 10⁴`
* `s` consists of parentheses only `'()[]{}'`.
