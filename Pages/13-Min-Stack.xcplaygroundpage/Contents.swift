import Foundation

class MinStack {
    private var stack: [(val: Int, minVal: Int)] = []

    init() {}
    
    func push(_ val: Int) {
        if stack.isEmpty {
            stack.append((val, val))
        } else {
            let currentMin = stack.last!.minVal
            stack.append((val, min(val, currentMin)))
        }
    }
    
    func pop() {
        _ = stack.popLast()
    }
    
    func top() -> Int {
        return stack.last!.val
    }
    
    func getMin() -> Int {
        return stack.last!.minVal
    }
}

// MARK: - Test Cases
let minStack = MinStack()
minStack.push(-2)
minStack.push(0)
minStack.push(-3)

let min1 = minStack.getMin()
print("13 Test Case 1: getMin() -> Result: \(min1) (Expected: -3)")

minStack.pop()
let topVal = minStack.top()
print("13 Test Case 2: top() -> Result: \(topVal) (Expected: 0)")

let min2 = minStack.getMin()
print("13 Test Case 3: getMin() -> Result: \(min2) (Expected: -2)")
