func solution(_ n:Int) -> Int {
    let squareRoot = Double(n).squareRoot()
    return squareRoot - squareRoot.rounded(.down) > 0 ? 2 : 1
}

