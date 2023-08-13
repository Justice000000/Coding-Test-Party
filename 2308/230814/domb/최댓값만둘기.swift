func solution(_ numbers:[Int]) -> Int {
    var numbers = numbers.sorted()
    let count = numbers.count

    return max(numbers[0] * numbers[1], numbers[count-1] * numbers[count - 2])
}