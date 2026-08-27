# Longest Substring Without Repeating Characters
* **Category:** Sliding Window
* **Difficulty:** Medium

Given a string `s`, find the length of the **longest substring** without repeating characters.

## Example 1
**Input:** s = "abcabcbb"
**Output:** 3
**Explanation:** The answer is "abc", with the length of 3.

## Example 2
**Input:** s = "bbbbb"
**Output:** 1
**Explanation:** The answer is "b", with the length of 1.

## Example 3
**Input:** s = "pwwkew"
**Output:** 3
**Explanation:** The answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.

## Clues & Formulas

* **Metode Bruteforce**: Cek semua substring yang mungkin menggunakan nested loop, lalu verifikasi satu per satu apakah substring tersebut memiliki karakter unik menggunakan Hash Set.
  * *Kompleksitas*: Waktu $O(n^2)$ atau $O(n^3)$, Ruang $O(\min(m, n))$.
* **Metode yang Direkomendasikan**: Gunakan Sliding Window dengan Two Pointers (`left` dan `right`) dan Hash Map untuk menyimpan indeks terakhir dari setiap karakter. Jika karakter saat ini sudah ada di peta dan berada di dalam jendela, geser pointer `left` ke indeks karakter tersebut $+ 1$.
  * *Kompleksitas*: Waktu $O(n)$, Ruang $O(\min(m, n))$.
* **Metode Lain**: Gunakan Sliding Window dengan Hash Set untuk melacak karakter unik. Geser pointer `right` untuk memperluas jendela, dan jika ada duplikat, geser `left` satu per satu sambil menghapus karakter dari Set sampai duplikat hilang.
  * *Kompleksitas*: Waktu $O(n)$, Ruang $O(\min(m, n))$.

## Constraints
* `0 <= s.length <= 5 * 10⁴`
* `s` consists of English letters, digits, symbols and spaces.
