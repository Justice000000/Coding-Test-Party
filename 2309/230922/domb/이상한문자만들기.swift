func solution(_ s:String) -> String {
    var result = ""
    var count = 0
    
    result = s.map { String($0) }.map { (element) in
        if element != " " {
            if count % 2 == 0 {
                count += 1
                return element.uppercased()
            } else {
                count += 1
                return element.lowercased()
            }
        } else {
            count = 0
            return element
        }
    }.joined()
    
    return result
}