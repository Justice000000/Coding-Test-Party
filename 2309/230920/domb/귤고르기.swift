import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var count = 0
    var result = 0
    
    let dic = Dictionary(grouping: tangerine, by: { $0 })
    let sorted = dic.sorted(by: {$0.value.count > $1.value.count })
    
    for i in 0..<sorted.count {
        if count + sorted[i].value.count >= k {
            result += 1
            break
        } else {
            count += sorted[i].value.count
            result += 1
        }
    }
    
    return result
}