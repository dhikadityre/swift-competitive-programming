import Foundation

class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        let mapping: [Character: Character] = [")": "(", "}": "{", "]": "["]
        for char in s {
            if let matchingOpen = mapping[char] {
                if stack.isEmpty || stack.removeLast() != matchingOpen {
                    return false
                }
            } else {
                stack.append(char)
            }
        }
        return stack.isEmpty
    }
}

// MARK: - Test Cases
let solution = Solution()
let test1 = solution.isValid("()")
print("9 Test Case 1: s = \"()\" -> Result: \(test1) (Expected: true)")

let test2 = solution.isValid("()[]{}")
print("9 Test Case 2: s = \"()[]{}\" -> Result: \(test2) (Expected: true)")

let test3 = solution.isValid("(]")
print("9 Test Case 3: s = \"(]\" -> Result: \(test3) (Expected: false)")
