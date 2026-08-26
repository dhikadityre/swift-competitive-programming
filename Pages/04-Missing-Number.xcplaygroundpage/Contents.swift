import Foundation

class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let n = nums.count
        let expectedSum = n * (n + 1) / 2
        let actualSum = nums.reduce(0, +)
        return expectedSum - actualSum
    }
}

// MARK: - Test Cases
let solution = Solution()
let test1 = solution.missingNumber([3, 0, 1])
print("4 Test Case 1: nums = [3,0,1] -> Result: \(test1) (Expected: 2)")

let test2 = solution.missingNumber([0, 1])
print("4 Test Case 2: nums = [0,1] -> Result: \(test2) (Expected: 2)")

let test3 = solution.missingNumber([9, 6, 4, 2, 3, 5, 7, 0, 1])
print("4 Test Case 3: nums = [9,6,4,2,3,5,7,0,1] -> Result: \(test3) (Expected: 8)")
