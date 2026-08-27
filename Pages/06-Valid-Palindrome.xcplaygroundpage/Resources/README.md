# Valid Palindrome
* **Category:** Two Pointers
* **Difficulty:** Easy

A phrase is a **palindrome** if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

Given a string `s`, return `true` if it is a **palindrome**, or `false` otherwise.

## Example 1
**Input:** s = "A man, a plan, a canal: Panama"
**Output:** true
**Explanation:** "amanaplanacanalpanama" is a palindrome.

## Example 2
**Input:** s = "race a car"
**Output:** false
**Explanation:** "raceacar" is not a palindrome.

## Example 3
**Input:** s = " "
**Output:** true
**Explanation:** s is an empty string "" after removing non-alphanumeric characters. Since an empty string reads the same forward and backward, it is a palindrome.

## Clues & Formulas

* **Metode Bruteforce**: Buat string baru yang merupakan kebalikan (reversed) dari string asli (setelah difilter), lalu bandingkan kesamaan keduanya.
  * *Kompleksitas*: Waktu $O(n)$, Ruang $O(n)$.
* **Metode yang Direkomendasikan**: Gunakan pendekatan Two Pointers (satu pointer di awal, satu di akhir). Geser pointer melewati karakter non-alphanumeric, lalu bandingkan karakter di kedua pointer hingga keduanya bertemu di tengah.
  * *Kompleksitas*: Waktu $O(n)$, Ruang $O(1)$.
* **Metode Lain**: Gunakan rekursi. Bandingkan karakter ujung ke ujung, lalu panggil fungsi rekursif untuk substring bagian dalam (setelah membersihkan karakter non-alphanumeric).
  * *Kompleksitas*: Waktu $O(n)$, Ruang $O(n)$ akibat rekursi call stack.

## Constraints
* `1 <= s.length <= 2 * 10⁵`
* `s` consists only of printable ASCII characters.
