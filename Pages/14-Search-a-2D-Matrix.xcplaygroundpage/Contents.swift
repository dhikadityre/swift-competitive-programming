import Foundation

class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        guard !matrix.isEmpty else { return false }
        let rows = matrix.count
        let cols = matrix[0].count
        var left = 0
        var right = rows * cols - 1
        
        while left <= right {
            let mid = left + (right - left) / 2
            let row = mid / cols
            let col = mid % cols
            let midVal = matrix[row][col]
            
            if midVal == target {
                return true
            } else if midVal < target {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        return false
    }
}

// MARK: - Test Cases
let solution = Solution()
let matrix = [
    [1, 3, 5, 7],
    [10, 11, 16, 20],
    [23, 30, 34, 60]
]

let test1 = solution.searchMatrix(matrix, 3)
print("14 Test Case 1: target = 3 -> Result: \(test1) (Expected: true)")

let test2 = solution.searchMatrix(matrix, 13)
print("14 Test Case 2: target = 13 -> Result: \(test2) (Expected: false)")
