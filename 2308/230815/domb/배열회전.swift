
func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    return rotate(numbers: numbers, direction)
}

func rotate(numbers: [Int], _ direction: String) -> [Int] {
    var nums = numbers
    if direction == "right" {
        let last = nums.popLast()
        nums.insert(last!, at: 0)
    } else {
        let first = nums.removeFirst()
        nums.append(first)
    }
    return nums
}