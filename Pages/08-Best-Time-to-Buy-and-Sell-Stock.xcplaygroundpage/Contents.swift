import Foundation

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = Int.max
        var maxProfit = 0
        for price in prices {
            if price < minPrice {
                minPrice = price
            } else if price - minPrice > maxProfit {
                maxProfit = price - minPrice
            }
        }
        return maxProfit
    }
}

// MARK: - Test Cases
let solution = Solution()
let test1 = solution.maxProfit([7, 1, 5, 3, 6, 4])
print("8 Test Case 1: prices = [7,1,5,3,6,4] -> Result: \(test1) (Expected: 5)")

let test2 = solution.maxProfit([7, 6, 4, 3, 1])
print("8 Test Case 2: prices = [7,6,4,3,1] -> Result: \(test2) (Expected: 0)")
