import UIKit

//마지막 두 원소

func solution(_ num_list:[Int]) -> [Int] {
    var a = num_list
    var b = 0
    if a[a.count - 2] < a[a.count - 1] {
        b =  a[a.count - 1] - a[a.count - 2]
        a.append(b)

        return a
    } else {
        b = a[a.count - 1] * 2
         a.append(b)

        return a
    }
    
    
