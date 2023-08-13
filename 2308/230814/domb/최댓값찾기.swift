

func solution(_ array:[Int]) -> [Int] {
    let max = array.enumerated().max(by: { $0.element < $1.element })!
    return [max.element, max.offset]
}

func solution(_ array:[Int]) -> [Int] {
    let max = array.max()!
    return [max, Int(array.firstIndex(of: max)!)]
}