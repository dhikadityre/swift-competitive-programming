//
//  TwoSumSolutions.swift
//  
//
//  Created by DHIKA ADITYA ARE on 26/08/26.
//

import Foundation

public class TwoSumSolutions {
    public init() {}

    public func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
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

