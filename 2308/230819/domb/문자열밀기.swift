func solution(_ A:String, _ B:String) -> Int {

    var count = 0
    var string = A

    for _ in string {
        if string == B {
            return count
        } else { 
            let char = string.popLast().map{ String($0) }
            string = char! + string
            count += 1
            continue
        }
    }

    return -1
}
        
// 미친 해결법 ⭐️⭐️
func solution(_ A:String, _ B:String) -> Int {
    let arr = (A+A).components(separatedBy: B)
    return arr.count == 1 ? -1 : arr[1].count
}
