import Foundation

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        var charCounts = [Character: Int]()
        for char in s {
            charCounts[char, default: 0] += 1
        }
        for char in t {
            if let count = charCounts[char], count > 0 {
                charCounts[char] = count - 1
            } else {
                return false
            }
        }
        return true
    }
}

// MARK: - Test Cases
let solution = Solution()
let test1 = solution.isAnagram("anagram", "nagaram")
print("3 Test Case 1: s = \"anagram\", t = \"nagaram\" -> Result: \(test1) (Expected: true)")

let test2 = solution.isAnagram("rat", "car")
print("3 Test Case 2: s = \"rat\", t = \"car\" -> Result: \(test2) (Expected: false)")
