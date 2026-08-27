# Majority Element
* **Category:** Arrays & Hashing
* **Difficulty:** Easy

Given an array `nums` of size `n`, return the majority element.

The **majority element** is the element that appears more than `⌊n / 2⌋` times. You may assume that the majority element always exists in the array.

## Example 1
**Input:** nums = [3,2,3]
**Output:** 3

## Example 2
**Input:** nums = [2,2,1,1,1,2,2]
**Output:** 2

## Clues & Formulas

* **Metode Bruteforce**: Hitung frekuensi kemunculan setiap elemen menggunakan nested loop untuk menemukan elemen yang frekuensinya $> \lfloor n/2 floor$.
  * *Kompleksitas*: Waktu $O(n^2)$, Ruang $O(1)$.
* **Metode yang Direkomendasikan**: Gunakan Algoritma Boyer-Moore Voting. Tunjuk kandidat mayoritas dan counter. Iterasi elemen: jika counter 0 pilih kandidat baru, jika elemen sama dengan kandidat counter bertambah 1, jika berbeda counter berkurang 1.
  * *Kompleksitas*: Waktu $O(n)$, Ruang $O(1)$.
* **Metode Lain**: Urutkan array (sorting). Elemen mayoritas yang muncul $> \lfloor n/2 floor$ kali pasti akan selalu berada di indeks tengah array ($\lfloor n/2 floor$).
  * *Rumus*: Indeks elemen mayoritas = $	ext{nums}[n/2]$
  * *Kompleksitas*: Waktu $O(n \log n)$, Ruang $O(1)$.

## Constraints
* `n == nums.length`
* `1 <= n <= 5 * 10⁴`
* `-10⁹ <= nums[i] <= 10⁹`
