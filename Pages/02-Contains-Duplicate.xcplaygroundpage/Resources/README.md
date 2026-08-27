# Contains Duplicate

* **Category:** Arrays & Hashing
* **Difficulty:** Easy

Given an integer array `nums`, return `true` if any value appears **at least twice** in the array, and return `false` if every element is distinct.

## Example 1
**Input:** nums = [1,2,3,1]
**Output:** true
**Explanation:** The element 1 occurs at the indices 0 and 3.

## Example 2:
**Input:** nums = [1,2,3,4]
**Output:** false
**Explanation:** All elements are distinct.

## Example 3:
**Input:** nums = [1,1,1,3,3,4,3,2,4,2]
**Output:** true

## Clues & Formulas

* **Metode Bruteforce**: Bandingkan setiap elemen dengan seluruh elemen lainnya menggunakan nested loop.
  * *Kompleksitas*: Waktu $O(n^2)$, Ruang $O(1)$.
* **Metode yang Direkomendasikan**: Gunakan Hash Set untuk melacak angka yang sudah dikunjungi. Jika angka saat ini sudah ada di dalam Set, maka terdapat duplikat.
  * *Kompleksitas*: Waktu $O(n)$, Ruang $O(n)$.
* **Metode Lain**: Urutkan array terlebih dahulu (sorting). Jika ada elemen duplikat, elemen tersebut pasti berada bersebelahan dengan elemen yang sama. Periksa pasangan elemen yang bertetangga.
  * *Kompleksitas*: Waktu $O(n \log n)$, Ruang $O(1)$.
