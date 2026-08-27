# Search a 2D Matrix
* **Category:** Binary Search
* **Difficulty:** Medium

You are given an `m x n` integer matrix `matrix` with the following two properties:
1. Each row is sorted in non-decreasing order.
2. The first integer of each row is greater than the last integer of the previous row.

Given an integer `target`, return `true` if `target` is in `matrix` or `false` otherwise.

You must write a solution in $O(\log(m \times n))$ time complexity.

## Example 1
**Input:** matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 3
**Output:** true

## Example 2
**Input:** matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 13
**Output:** false

## Clues & Formulas

* **Metode Bruteforce**: Pindai seluruh baris dan kolom matriks satu per satu menggunakan nested loop (Linear Search) untuk menemukan target.
  * *Kompleksitas*: Waktu $O(m 	imes n)$, Ruang $O(1)$.
* **Metode yang Direkomendasikan**: Karena matriks terurut secara linier, lakukan Binary Search tunggal dengan menganggap matriks 2D sebagai array 1D virtual berukuran $m 	imes n$. Petakan indeks 1D tengah kembali ke baris dan kolom 2D.
  * *Rumus*: $	ext{row} = 	ext{mid} / 	ext{cols}$, $	ext{col} = 	ext{mid} \% 	ext{cols}$
  * *Kompleksitas*: Waktu $O(\log(m 	imes n))$, Ruang $O(1)$.
* **Metode Lain**: Lakukan Binary Search dua tahap. Pertama, lakukan binary search pada kolom pertama untuk mencari baris mana yang berpotensi memiliki target. Kedua, lakukan binary search pada baris tersebut.
  * *Kompleksitas*: Waktu $O(\log m + \log n)$, Ruang $O(1)$.

## Constraints
* `m == matrix.length`
* `n == matrix[i].length`
* `1 <= m, n <= 100`
* `-10⁴ <= matrix[i][j], target <= 10⁴`
