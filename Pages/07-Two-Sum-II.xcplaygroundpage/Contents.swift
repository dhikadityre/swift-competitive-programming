import Foundation

class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = numbers.count - 1
        while left < right {
            let sum = numbers[left] + numbers[right]
            if sum == target {
                return [left + 1, right + 1]
            } else if sum < target {
                left += 1
            } else {
                right -= 1
            }
        }
        return []
    }
}

// MARK: - Test Cases
let solution = Solution()
let test1 = solution.twoSum([2, 7, 11, 15], 9)
print("7 Test Case 1: numbers = [2,7,11,15], target = 9 -> Result: \(test1) (Expected: [1, 2])")

let test2 = solution.twoSum([2, 3, 4], 6)
print("7 Test Case 2: numbers = [2,3,4], target = 6 -> Result: \(test2) (Expected: [1, 3])")

let test3 = solution.twoSum([-1, 0], -1)
print("7 Test Case 3: numbers = [-1,0], target = -1 -> Result: \(test3) (Expected: [1, 2])")
