func solution(_ a:Int, _ d:Int, _ included:[Bool]) -> Int {
    return included.enumerated()
                    .map { $1 ? a + ($0 * d) : 0 }
                    .reduce(0, +)
}