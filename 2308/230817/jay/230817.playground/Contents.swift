import UIKit

//원소들의 곱과 합

func solution(_ num_list:[Int]) -> Int {
    var a = 1
    var s = 0
    
    for i in 0...num_list.count - 1 {
        a *= num_list[i]
        s += num_list[i]
    }
    
    if a < s * s {
        return 1
    } else {
        return 0
    }
    
    
    return 0
}
