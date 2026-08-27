# Min Stack
* **Category:** Stack
* **Difficulty:** Medium

Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

Implement the `MinStack` class:
* `MinStack()` initializes the stack object.
* `void push(int val)` pushes the element `val` onto the stack.
* `void pop()` removes the element on the top of the stack.
* `int top()` gets the top element of the stack.
* `int getMin()` retrieves the minimum element in the stack.

You must implement a solution with $O(1)$ time complexity for each function.

## Example 1
**Input:**
```text
["MinStack","push","push","push","getMin","pop","top","getMin"]
[[],[-2],[0],[-3],[],[],[],[]]
```
**Output:**
```text
[null,null,null,null,-3,null,0,-2]
```
**Explanation:**
```swift
let minStack = MinStack()
minStack.push(-2)
minStack.push(0)
minStack.push(-3)
minStack.getMin()   // return -3
minStack.pop()
minStack.top()      // return 0
minStack.getMin()   // return -2
```

## Clues & Formulas

* **Metode Bruteforce**: Setiap kali `getMin()` dipanggil, lakukan iterasi memindai seluruh elemen di dalam stack untuk mencari nilai terkecil.
  * *Kompleksitas*: `getMin()` Waktu $O(n)$, operasi lainnya $O(1)$. Ruang $O(n)$.
* **Metode yang Direkomendasikan**: Gunakan satu Stack tunggal di mana setiap elemen menyimpan pasangan nilai (tuple/struct) berisi: `(nilai_asli, nilai_minimum_saat_itu)`. Nilai minimum baru diperoleh dari membandingkan nilai yang di-push dengan nilai minimum elemen teratas stack saat itu.
  * *Rumus*: $	ext{min\_val} = \min(	ext{val}, 	ext{stack.last.min\_val})$
  * *Kompleksitas*: Semua operasi Waktu $O(1)$, Ruang $O(n)$.
* **Metode Lain**: Gunakan dua Stack terpisah: satu stack utama untuk menyimpan seluruh nilai asli, dan satu stack pembantu (`min_stack`) khusus untuk melacak nilai minimum historis.
  * *Kompleksitas*: Semua operasi Waktu $O(1)$, Ruang $O(n)$.

## Constraints
* `-2³¹ <= val <= 2³¹ - 1`
* Methods `pop`, `top` and `getMin` will always be called on **non-empty** stacks.
* At most `3 * 10⁴` calls will be made to `push`, `pop`, `top`, and `getMin`.
