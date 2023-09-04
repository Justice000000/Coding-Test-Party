func solution(_ n:Int) -> Int {
    return  (2...n - 1).filter { (n-1) % $0 == 0 }.sorted().first!
}