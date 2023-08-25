import UIKit


func solution(_ n:Int, _ control:String) -> Int {
    var int = n

    for i in control {
     switch i {
         case "w": int += 1
         case "s": int -= 1
         case "d": int += 10
         default:
         int -= 10
     }
    }
    return int
}
