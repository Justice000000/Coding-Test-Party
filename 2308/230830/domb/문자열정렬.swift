func solution(_ my_string:String) -> [Int] {
    return my_string.flatMap { Int(String($0)) }.sorted()
}