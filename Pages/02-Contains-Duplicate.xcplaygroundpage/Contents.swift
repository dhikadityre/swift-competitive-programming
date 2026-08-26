import Foundation

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var set = Set<Int>()
        for num in nums {
            if set.contains(num) {
                return true
            }
            set.insert(num)
        }
        return false
    }
}

// MARK: - Test Cases
let solution = Solution()
let test1 = solution.containsDuplicate([1, 2, 3, 1])
print("2 Test Case 1: nums = [1,2,3,1] -> Result: \(test1) (Expected: true)")

let test2 = solution.containsDuplicate([1, 2, 3, 4])
print("2 Test Case 2: nums = [1,2,3,4] -> Result: \(test2) (Expected: false)")

let test3 = solution.containsDuplicate([1, 1, 1, 3, 3, 4, 3, 2, 4, 2])
print("2 Test Case 3: nums = [1,1,1,3,3,4,3,2,4,2] -> Result: \(test3) (Expected: true)")
