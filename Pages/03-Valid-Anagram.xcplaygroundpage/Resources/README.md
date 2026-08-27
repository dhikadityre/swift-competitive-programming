# Valid Anagram
* **Category:** Arrays & Hashing
* **Difficulty:** Easy

Given two strings `s` and `t`, return `true` if `t` is an **anagram** of `s`, and `false` otherwise.

An **Anagram** is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

## Example 1
**Input:** s = "anagram", t = "nagaram"
**Output:** true

## Example 2
**Input:** s = "rat", t = "car"
**Output:** false

## Clues & Formulas

* **Metode Bruteforce**: Untuk setiap karakter di string pertama, cari karakter yang sama di string kedua, lalu hapus atau tandai karakter tersebut agar tidak dihitung dua kali.
  * *Kompleksitas*: Waktu $O(n^2)$, Ruang $O(1)$.
* **Metode yang Direkomendasikan**: Gunakan Hash Map (atau array frekuensi berukuran 26 untuk karakter lowercase) untuk menghitung frekuensi kemunculan setiap karakter. Tambah frekuensi saat memproses string pertama, dan kurangi frekuensi saat memproses string kedua. Pastikan semua frekuensi akhir bernilai 0.
  * *Kompleksitas*: Waktu $O(n)$, Ruang $O(1)$ karena jumlah karakter alfabet konstan (26).
* **Metode Lain**: Urutkan (sort) kedua string secara alfabetis, lalu bandingkan apakah kedua string hasil pengurutan tersebut identik.
  * *Kompleksitas*: Waktu $O(n \log n)$, Ruang $O(n)$ untuk menyimpan hasil pengurutan.

## Constraints
* `1 <= s.length, t.length <= 5 * 10⁴`
* `s` and `t` consist of lowercase English letters.
