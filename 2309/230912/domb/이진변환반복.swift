
func solution(_ s:String) -> [Int] {
    var s = s
    var count = 0
    var zeroCount = 0

    while s != "1" {
        let length = removeZero(s).count
        zeroCount += (s.count - length)
        s = binary(length)
        count += 1
    }

    return [count, zeroCount]
}

func removeZero(_ value: String) -> String {
    return value.replacing("0", with: "")
}

func binary(_ value: Int) -> String {
    return String(value, radix: 2)
}

func decimal(_ value: String) -> Int {
    return Int(value, radix: 10)!
}