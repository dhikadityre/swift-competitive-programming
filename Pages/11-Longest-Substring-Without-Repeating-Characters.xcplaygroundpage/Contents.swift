import Foundation

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let chars = Array(s)
        var charMap = [Character: Int]()
        var maxLength = 0
        var left = 0
        for right in 0..<chars.count {
            let char = chars[right]
            if let index = charMap[char], index >= left {
                left = index + 1
            }
            charMap[char] = right
            maxLength = max(maxLength, right - left + 1)
        }
        return maxLength
    }
}

// MARK: - Test Cases
let solution = Solution()
let test1 = solution.lengthOfLongestSubstring("abcabcbb")
print("11 Test Case 1: s = \"abcabcbb\" -> Result: \(test1) (Expected: 3)")

let test2 = solution.lengthOfLongestSubstring("bbbbb")
print("11 Test Case 2: s = \"bbbbb\" -> Result: \(test2) (Expected: 1)")

let test3 = solution.lengthOfLongestSubstring("pwwkew")
print("11 Test Case 3: s = \"pwwkew\" -> Result: \(test3) (Expected: 3)")
