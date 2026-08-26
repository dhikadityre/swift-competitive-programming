import Foundation

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        while left <= right {
            let mid = left + (right - left) / 2
            if nums[mid] == target {
                return mid
            } else if nums[mid] < target {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        return -1
    }
}

// MARK: - Test Cases
let solution = Solution()
let test1 = solution.search([-1, 0, 3, 5, 9, 12], 9)
print("10 Test Case 1: nums = [-1,0,3,5,9,12], target = 9 -> Result: \(test1) (Expected: 4)")

let test2 = solution.search([-1, 0, 3, 5, 9, 12], 2)
print("10 Test Case 2: nums = [-1,0,3,5,9,12], target = 2 -> Result: \(test2) (Expected: -1)")
