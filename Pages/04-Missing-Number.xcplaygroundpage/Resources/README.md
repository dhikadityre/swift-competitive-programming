# Missing Number
* **Category:** Arrays & Hashing
* **Difficulty:** Easy

Given an array `nums` containing `n` distinct numbers in the range `[0, n]`, return the only number in the range that is missing from the array.

## Example 1
**Input:** nums = [3,0,1]
**Output:** 2
**Explanation:** n = 3 since there are 3 numbers, so all numbers are in the range [0,3]. 2 is the missing number in the range since it does not appear in nums.

## Example 2
**Input:** nums = [0,1]
**Output:** 2
**Explanation:** n = 2 since there are 2 numbers, so all numbers are in the range [0,2]. 2 is the missing number in the range since it does not appear in nums.

## Example 3
**Input:** nums = [9,6,4,2,3,5,7,0,1]
**Output:** 8
**Explanation:** n = 9 since there are 9 numbers, so all numbers are in the range [0,9]. 8 is the missing number in the range since it does not appear in nums.

## Clues & Formulas

* **Metode Bruteforce**: Untuk setiap angka dari $0$ hingga $n$, lakukan pencarian linear di dalam array untuk memeriksa apakah angka tersebut ada.
  * *Kompleksitas*: Waktu $O(n^2)$, Ruang $O(1)$.
* **Metode yang Direkomendasikan**: Gunakan Rumus Jumlah Deret Aritmatika Gauss untuk menghitung total jumlah teoretis dari $0$ hingga $n$, kemudian kurangi dengan jumlah elemen yang ada di dalam array.
  * *Rumus*: $	ext{Expected Sum} = rac{n 	imes (n + 1)}{2}$
  * *Kompleksitas*: Waktu $O(n)$, Ruang $O(1)$.
* **Metode Lain**: Gunakan operasi Bitwise XOR. Lakukan operasi XOR pada semua angka dari $0$ hingga $n$, dan lakukan XOR lagi pada seluruh angka di dalam array. Elemen yang tersisa adalah angka yang hilang karena $x \oplus x = 0$ dan $x \oplus 0 = x$.
  * *Kompleksitas*: Waktu $O(n)$, Ruang $O(1)$.

## Constraints
* `n == nums.length`
* `1 <= n <= 10⁴`
* `0 <= nums[i] <= n`
* All the numbers of `nums` are **unique**.
