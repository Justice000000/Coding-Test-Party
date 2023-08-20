func solution(_ my_string:String, _ n:Int) -> String {
    return my_string.map { String($0) }[0...n-1].joined()
}

func solution(_ my_string: String, _ n: Int) -> String {
    return "\(my_string.prefix(n))"
}