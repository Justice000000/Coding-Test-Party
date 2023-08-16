func solution(_ num:Int, _ k:Int) -> Int {
let nums = String(num).map { Int(String($0))! }.enumerated()
    for number in nums {
        if number.element == k {
            return number.offset + 1
        }
    }
    return -1
}