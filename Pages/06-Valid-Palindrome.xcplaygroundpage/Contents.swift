import Foundation

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let chars = Array(s.lowercased().filter { $0.isLetter || $0.isNumber })
        var left = 0
        var right = chars.count - 1
        while left < right {
            if chars[left] != chars[right] {
                return false
            }
            left += 1
            right -= 1
        }
        return true
    }
}

// MARK: - Test Cases
let solution = Solution()
let test1 = solution.isPalindrome("A man, a plan, a canal: Panama")
print("6 Test Case 1: s = \"A man, a plan, a canal: Panama\" -> Result: \(test1) (Expected: true)")

let test2 = solution.isPalindrome("race a car")
print("6 Test Case 2: s = \"race a car\" -> Result: \(test2) (Expected: false)")

let test3 = solution.isPalindrome(" ")
print("6 Test Case 3: s = \" \" -> Result: \(test3) (Expected: true)")

let test4 = solution.isPalindrome("a121a")
print("6 Result: \(test4) (Expected: true)")
