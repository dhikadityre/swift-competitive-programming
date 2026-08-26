import Foundation

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var count = 0
        var candidate = nums[0]
        for num in nums {
            if count == 0 {
                candidate = num
            }
            count += (num == candidate) ? 1 : -1
        }
        return candidate
    }
}

// MARK: - Test Cases
let solution = Solution()
let test1 = solution.majorityElement([3, 2, 3])
print("5 Test Case 1: nums = [3,2,3] -> Result: \(test1) (Expected: 3)")

let test2 = solution.majorityElement([2, 2, 1, 1, 1, 2, 2])
print("5 Test Case 2: nums = [2,2,1,1,1,2,2] -> Result: \(test2) (Expected: 2)")
