# Best Time to Buy and Sell Stock
* **Category:** Sliding Window
* **Difficulty:** Easy

You are given an array `prices` where `prices[i]` is the price of a given stock on the `i`-th day.

You want to maximize your profit by choosing a **single day** to buy one stock and choosing a **different day in the future** to sell that stock.

Return *the maximum profit you can achieve from this transaction*. If you cannot achieve any profit, return `0`.

## Example 1
**Input:** prices = [7,1,5,3,6,4]
**Output:** 5
**Explanation:** Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5. Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.

## Example 2
**Input:** prices = [7,6,4,3,1]
**Output:** 0
**Explanation:** In this case, no transactions are done and the max profit = 0.

## Clues & Formulas

* **Metode Bruteforce**: Bandingkan harga beli di setiap hari dengan semua harga jual di hari-hari setelahnya menggunakan nested loop, lalu ambil profit maksimum.
  * *Kompleksitas*: Waktu $O(n^2)$, Ruang $O(1)$.
* **Metode yang Direkomendasikan**: Iterasi satu arah (One-Pass). Lacak harga terendah yang pernah ditemui sejauh ini (`min_price`), dan hitung profit jika menjual di harga hari ini. Update profit maksimum jika profit hari ini lebih besar.
  * *Rumus*: $	ext{profit} = 	ext{price} - 	ext{min\_price}$
  * *Kompleksitas*: Waktu $O(n)$, Ruang $O(1)$.
* **Metode Lain**: Gunakan pendekatan Dynamic Programming atau Kadane's Algorithm dengan mengubah array harga menjadi array selisih harga harian, lalu cari nilai Maximum Subarray.
  * *Kompleksitas*: Waktu $O(n)$, Ruang $O(1)$ atau $O(n)$.

## Constraints
* `1 <= prices.length <= 10⁵`
* `0 <= prices[i] <= 10⁴`
