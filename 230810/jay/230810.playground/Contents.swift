import Foundation


// 배열 두배로 만들기

func solution(_ numbers:[Int]) -> [Int] {
    var a = numbers
    for i in 0...a.count - 1 {
        a[i] = a[i] * 2
    }
   
    return a
}



