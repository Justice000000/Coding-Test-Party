
/// 배열 두 배 만들기
func solution(_ numbers:[Int]) -> [Int] {
    return numbers.map {$0 * 2}
}

// 나머지 구하기
func solution(_ num1:Int, _ num2:Int) -> Int {
    return num1 % num2
}

// 중앙값 구하기
func solution(_ array:[Int]) -> Int {
    let sortedArray = array.sorted()
    return sortedArray[array.count / 2]
}

// 최빈값 구하기 ⭐️
func solution(_ array:[Int]) -> Int {
    let group = Dictionary(grouping: array) { $0 }
    let sortedArray = group.sorted { $0.value.count > $1.value.count }
    return (sortedArray.count > 1 && sortedArray[0].value.count == sortedArray[1].value.count) ? -1 : sortedArray[0].key
}

// 짝수는 싫어요
func solution(_ n:Int) -> [Int] {
    return (1...n).filter { $0 % 2 != 0}.sorted()
}