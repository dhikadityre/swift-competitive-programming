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
5. **Run the Code**: Open the `Contents.swift` of any page and click the **Run** button to execute the test cases.

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
| 3 | [Problem 3](https://leetcode.com/problems/problem-3/) | Easy | [Code](Pages/03.xcplaygroundpage/Contents.swift) | [Writeup](Pages/03.xcplaygroundpage/README.md) |

## 🛠 Features of this Setup

- **Playground Pages**: Each problem runs in its own context, preventing naming conflicts (e.g., reusing class `Solution`).
- **Separate Writeups**: Every page has a dedicated `README.md` to document time/space complexity analysis and explanation notes.
- **Shared Helpers**: Common data structures like `TreeNode` or `ListNode` can be placed under the global `Sources/` folder to be reused across all pages without duplicate code.
