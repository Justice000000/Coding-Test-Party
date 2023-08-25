func solution(_ my_str:String, _ n:Int) -> [String] {
    var result = [String]()
    var count = 1
    var string = ""

    my_str.forEach {
        if count < n {
            string += String($0)
            count += 1
        } else {
            string += String($0)
            result.append(string)
            count = 1
            string = ""
        }
    }

    if string != "" {
        result.append(string)
    }

    return result
}