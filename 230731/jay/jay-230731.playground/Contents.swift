import Foundation

//두 수의 연산

func solution(_ a:Int, _ b:Int) -> Int {

    let q = Int(String(a)+String(b))!
    let w = 2 * a * b
    return q < w ? w : q

}
