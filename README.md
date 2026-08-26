# Swift Competitive Programming Writeups

Welcome! This repository is a collection of my competitive programming solutions, complete with explanations (writeups) and executable test cases. It is structured as an Xcode Swift Playground utilizing **Playground Pages** to keep each problem organized and executable independently.

---

## 📂 Repository Structure

The project is organized as follows:

```text
swift-competitive-programming.playground/
├── Pages/
│   ├── 01-Two-Sum.xcplaygroundpage/
│   │   ├── README.md               # Writeup, constraints, and problem explanation
│   │   └── Contents.swift           # Executable Swift solution and test cases
│   ├── 02-Contains-Duplicate.xcplaygroundpage/
│   │   ├── README.md
│   │   └── Contents.swift
│   └── ...
├── Sources/                         # Shared data structures and utility files
│   └── (e.g., ListNode.swift, TreeNode.swift)
└── README.md                        # This file (Project Overview)
```

---

## 🚀 How to Use & Run

To open and run the solutions locally:

1. **Prerequisites**: Ensure you have macOS and **Xcode** installed.
2. **Clone the Repository**:
   ```bash
   git clone https://github.com/dhikadityre/swift-competitive-programming.git
   ```
3. **Open the Playground**: Double-click `swift-competitive-programming.playground` to open it in Xcode.
4. **Navigate Pages**: Use the Xcode Project Navigator (left pane) to switch between different problems.
5. **Run the Code**: Open the `Contents.swift` of any page and run it.

### 💡 Best Practices for Running Playgrounds

Xcode Playgrounds can sometimes be tricky when managing multiple pages. Follow these tips for a better development experience:

#### 1. Switch to "Manually Run" (Highly Recommended)
To prevent Xcode from executing the entire playground automatically on every keystroke:
* **Long-press** the **Play/Run** button at the bottom left of the editor (or the console bar).
* Select **Manually Run** from the pop-up menu.

#### 2. Run Only the Active Page
Executing the entire playground will run all pages sequentially. To run only the page you are currently viewing:
* **Keyboard Shortcut**: Press `Shift + Command + Enter` (Run Current Page). *Do not use `Command + Enter` as it executes the whole playground.*
* **Project Navigator (Sidebar)**: Hover over the page name in the left sidebar and click the small play button next to it.
* **Inline Editor**: Click the play button in the bottom bar of the code editor.

#### 3. Clear the Console
Because Xcode uses a shared console across all pages, logs from previous runs can stack up.
* Press `Command + K` while focused on the console window to clear old outputs before running a new page.


### 🔄 Syncing the Solved Problems Table

Whenever you add a new Playground Page or update problem titles, run the Python helper script to automatically sync and update the table under the **Solved Problems** section:

1. Open your terminal at the root of this playground directory.
2. Execute the script:
   ```bash
   python3 update_readme.py
   ```
3. Commit and push the updated `README.md` alongside your new page files.

---

## 📝 Solved Problems

| # | Problem | Difficulty | Solution | Writeup |
|---|---------|------------|----------|---------|
| 1 | [Two Sum](https://leetcode.com/problems/two-sum/) | Easy | [Code](Pages/01-Two-Sum.xcplaygroundpage/Contents.swift) | [Writeup](Pages/01-Two-Sum.xcplaygroundpage/README.md) |
| 2 | [Contains Duplicate](https://leetcode.com/problems/contains-duplicate/) | Easy | [Code](Pages/02-Contains-Duplicate.xcplaygroundpage/Contents.swift) | [Writeup](Pages/02-Contains-Duplicate.xcplaygroundpage/README.md) |
| 3 | [Valid Anagram](https://leetcode.com/problems/valid-anagram/) | Easy | [Code](Pages/03-Valid-Anagram.xcplaygroundpage/Contents.swift) | [Writeup](Pages/03-Valid-Anagram.xcplaygroundpage/README.md) |
| 4 | [Missing Number](https://leetcode.com/problems/missing-number/) | Easy | [Code](Pages/04-Missing-Number.xcplaygroundpage/Contents.swift) | [Writeup](Pages/04-Missing-Number.xcplaygroundpage/README.md) |
| 5 | [Majority Element](https://leetcode.com/problems/majority-element/) | Easy | [Code](Pages/05-Majority-Element.xcplaygroundpage/Contents.swift) | [Writeup](Pages/05-Majority-Element.xcplaygroundpage/README.md) |
| 6 | [Valid Palindrome](https://leetcode.com/problems/valid-palindrome/) | Easy | [Code](Pages/06-Valid-Palindrome.xcplaygroundpage/Contents.swift) | [Writeup](Pages/06-Valid-Palindrome.xcplaygroundpage/README.md) |
| 7 | [Two Sum II - Input Array Is Sorted](https://leetcode.com/problems/two-sum-ii---input-array-is-sorted/) | Easy | [Code](Pages/07-Two-Sum-II.xcplaygroundpage/Contents.swift) | [Writeup](Pages/07-Two-Sum-II.xcplaygroundpage/README.md) |
| 8 | [Best Time to Buy and Sell Stock](https://leetcode.com/problems/best-time-to-buy-and-sell-stock/) | Easy | [Code](Pages/08-Best-Time-to-Buy-and-Sell-Stock.xcplaygroundpage/Contents.swift) | [Writeup](Pages/08-Best-Time-to-Buy-and-Sell-Stock.xcplaygroundpage/README.md) |
| 9 | [Valid Parentheses](https://leetcode.com/problems/valid-parentheses/) | Easy | [Code](Pages/09-Valid-Parentheses.xcplaygroundpage/Contents.swift) | [Writeup](Pages/09-Valid-Parentheses.xcplaygroundpage/README.md) |
| 10 | [Binary Search](https://leetcode.com/problems/binary-search/) | Easy | [Code](Pages/10-Binary-Search.xcplaygroundpage/Contents.swift) | [Writeup](Pages/10-Binary-Search.xcplaygroundpage/README.md) |
| 11 | [Longest Substring Without Repeating Characters](https://leetcode.com/problems/longest-substring-without-repeating-characters/) | Easy | [Code](Pages/11-Longest-Substring-Without-Repeating-Characters.xcplaygroundpage/Contents.swift) | [Writeup](Pages/11-Longest-Substring-Without-Repeating-Characters.xcplaygroundpage/README.md) |

## 🛠 Features of this Setup

- **Playground Pages**: Each problem runs in its own context, preventing naming conflicts (e.g., reusing class `Solution`).
- **Separate Writeups**: Every page has a dedicated `README.md` to document time/space complexity analysis and explanation notes.
- **Shared Helpers**: Common data structures like `TreeNode` or `ListNode` can be placed under the global `Sources/` folder to be reused across all pages without duplicate code.
