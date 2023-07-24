// 나이 출력
func solution(_ age:Int) -> Int {
    return 2022 - age + 1
}

// 각도기
func solution(_ angle:Int) -> Int {
    switch angle {
        case 1..<90:
            return 1
        case 90:
            return 2
        case 91..<180:
            return 3
        case 180:
            return 4
        default:
            return 0
    }
}