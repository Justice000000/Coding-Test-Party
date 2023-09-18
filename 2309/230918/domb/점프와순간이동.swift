import Foundation

func solution(_ n:Int) -> Int 
{
    var ans: Int = 0
    var length = n
    
    while length != 1 {
        if length % 2 != 0 {
            length -= 1
            length = length / 2
            ans += 1
        } else {
            length = length / 2
        }
    }

    return ans + 1
}
