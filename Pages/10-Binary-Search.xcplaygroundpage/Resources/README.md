# Binary Search
* **Category:** Binary Search
* **Difficulty:** Easy

Given an array of integers `nums` which is sorted in ascending order, and an integer `target`, write a function to search `target` in `nums`. If `target` exists, then return its index. Otherwise, return `-1`.

You must write an algorithm with $O(\log n)$ runtime complexity.

## Example 1
**Input:** nums = [-1,0,3,5,9,12], target = 9
**Output:** 4
**Explanation:** 9 exists in nums and its index is 4.

## Example 2
**Input:** nums = [-1,0,3,5,9,12], target = 2
**Output:** -1
**Explanation:** 2 does not exist in nums so return -1.

## Clues & Formulas

* **Metode Bruteforce**: Gunakan Linear Search dengan mengiterasi array dari awal sampai akhir untuk mencari nilai target.
  * *Kompleksitas*: Waktu $O(n)$, Ruang $O(1)$.
* **Metode yang Direkomendasikan**: Gunakan Binary Search klasik dengan membagi area pencarian menjadi dua di setiap iterasi menggunakan pointer `left` dan `right`.
  * *Rumus*: Indeks tengah $	ext{mid} = 	ext{left} + rac{	ext{right} - 	ext{left}}{2}$
  * *Kompleksitas*: Waktu $O(\log n)$, Ruang $O(1)$.
* **Metode Lain**: Gunakan Binary Search secara rekursif dengan meneruskan batas indeks kiri dan kanan ke pemanggilan fungsi berikutnya.
  * *Kompleksitas*: Waktu $O(\log n)$, Ruang $O(\log n)$ call stack.

## Constraints
* `1 <= nums.length <= 10⁴`
* `-10⁴ < nums[i], target < 10⁴`
* All the integers in `nums` are **unique**.
* `nums` is sorted in ascending order.
