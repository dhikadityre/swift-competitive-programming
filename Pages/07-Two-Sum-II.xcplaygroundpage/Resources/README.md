# Two Sum II - Input Array Is Sorted
* **Category:** Two Pointers
* **Difficulty:** Medium

Given a **1-indexed** array of integers `numbers` that is already **sorted in non-decreasing order**, find two numbers such that they add up to a specific `target` number. Let these two numbers be `numbers[index1]` and `numbers[index2]` where `1 <= index1 < index2 <= numbers.length`.

Return *the indices of the two numbers, `index1` and `index2`, **added by one** as an integer array `[index1, index2]` of length 2.*

The tests are generated such that there is **exactly one solution**. You **may not** use the same element twice.

Your solution must use only constant extra space.

## Example 1
**Input:** numbers = [2,7,11,15], target = 9
**Output:** [1,2]
**Explanation:** The sum of 2 and 7 is 9. Therefore, index1 = 1, index2 = 2. We return [1, 2].

## Example 2
**Input:** numbers = [2,3,4], target = 6
**Output:** [1,3]
**Explanation:** The sum of 2 and 4 is 6. Therefore, index1 = 1, index2 = 3. We return [1, 3].

## Example 3
**Input:** numbers = [-1,0], target = -1
**Output:** [1,2]
**Explanation:** The sum of -1 and 0 is -1. Therefore, index1 = 1, index2 = 2. We return [1, 2].

## Clues & Formulas

* **Metode Bruteforce**: Gunakan nested loop untuk mengecek semua pasangan angka.
  * *Kompleksitas*: Waktu $O(n^2)$, Ruang $O(1)$.
* **Metode yang Direkomendasikan**: Karena array sudah terurut, gunakan Two Pointers di ujung kiri dan kanan. Jika jumlah kedua angka kurang dari target geser pointer kiri ke kanan, jika jumlahnya lebih dari target geser pointer kanan ke kiri.
  * *Kompleksitas*: Waktu $O(n)$, Ruang $O(1)$.
* **Metode Lain**: Lakukan Binary Search untuk mencari komplemen (`target - numbers[i]`) bagi setiap elemen ke-$i$ pada sisa array di sebelah kanannya.
  * *Kompleksitas*: Waktu $O(n \log n)$, Ruang $O(1)$.

## Constraints
* `2 <= numbers.length <= 3 * 10⁴`
* `-1000 <= numbers[i] <= 1000`
* `numbers` is sorted in **non-decreasing order**.
* `-1000 <= target <= 1000`
* The tests are generated such that there is **exactly one solution**.
