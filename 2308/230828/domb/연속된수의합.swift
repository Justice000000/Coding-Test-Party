func solution(_ num:Int, _ total:Int) -> [Int] {
    let firstNumber = (((total * 2) / num) + 1 - num) / 2
    return (firstNumber...(firstNumber + num - 1)).map { Int($0) }
}