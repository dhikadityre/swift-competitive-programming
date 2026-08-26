import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for (index, num) in nums.enumerated() {
            let complement = target - num
            if let complementIndex = dict[complement] {
                return [complementIndex, index]
            }
            dict[num] = index
        }
        return []
    }
}

// MARK: - Test Cases
let solution = Solution()
let test1 = solution.twoSum([2, 7, 11, 15], 9)
print("Test Case 1: nums = [2,7,11,15], target = 9 -> Result: \(test1) (Expected: [0, 1])")

let test2 = solution.twoSum([3, 2, 4], 6)
print("Test Case 2: nums = [3,2,4], target = 6 -> Result: \(test2) (Expected: [1, 2])")

let test3 = solution.twoSum([3, 3], 6)
print("Test Case 3: nums = [3,3], target = 6 -> Result: \(test3) (Expected: [0, 1])")
