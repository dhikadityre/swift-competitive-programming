import Foundation

class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var sum = 0
        for i in 0..<k {
            sum += nums[i]
        }
        var maxSum = sum
        for i in k..<nums.count {
            sum += nums[i] - nums[i - k]
            maxSum = max(maxSum, sum)
        }
        return Double(maxSum) / Double(k)
    }
}

// MARK: - Test Cases
let solution = Solution()
let test1 = solution.findMaxAverage([1, 12, -5, -6, 50, 3], 4)
print("12 Test Case 1: nums = [1,12,-5,-6,50,3], k = 4 -> Result: \(test1) (Expected: 12.75)")

let test2 = solution.findMaxAverage([5], 1)
print("12 Test Case 2: nums = [5], k = 1 -> Result: \(test2) (Expected: 5.0)")
