import Foundation

//공배수
func solution(_ number:Int, _ n:Int, _ m:Int) -> Int {
    if number % n == 0 && number % m == 0 {
        return 1
    } else {
    return 0}
}

// 홀짝에 따라 다른 값 반환하기
func solution(_ n:Int) -> Int {
    var sum = 0
    var sum1 = 0
        for i in 1...n {
             if i % 2 != 0 {
                 sum += i
                 print("sum: \(sum)")
        } else {
                 sum1 += (i * i)
            print("sum1: \(sum1)")
             }
    }
    
    if n % 2 != 0 {
        return sum
    } else {
        return sum1
    }
}


