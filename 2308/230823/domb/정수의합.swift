func solution(_ a:String) -> Int {
    a.reduce(0) { $0 + Int(String($1))! }
}