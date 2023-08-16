func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var result: [[Int]] = []
    var row = [Int]()

    for (index, element) in num_list.enumerated() {
       if index == 0 {
        row.append(element)
       } else if index % n != 0 {
        row.append(element)
       } else {
        result.append(row)
        row.append(element)
        row = []
       }
    }
    return result
}
