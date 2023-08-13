

func solution(_ my_string:String) -> String {
    return my_string.replacingOccurrences(of: "[aeiou]", with: "", options: .regularExpression)
}

func solution11(_ my_string:String) -> String {
    return my_string.filter { !["a", "e", "i", "o", "u"].contains($0)}
}