import UIKit


//flag에 따라 다른 값 반환하기

func solution(_ a:Int, _ b:Int, _ flag:Bool) -> Int {
    if flag == true {
        return a + b
    } else {
    return a - b
    }
}
