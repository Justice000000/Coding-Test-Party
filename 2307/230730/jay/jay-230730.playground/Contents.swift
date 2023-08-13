import Foundation

//더 크게합치기
func solution(_ a:Int, _ b:Int) -> Int {
    let z: Int = Int(String(a) + String(b))!
    let x: Int = Int(String(b) + String(a))!
    var result = 0
    if z > x {
        result = z
    } else if z == x {
        result = z
    } else {
        result = x
    }
    return result
}




