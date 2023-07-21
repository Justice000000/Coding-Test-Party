import UIKit

//두수의 합
func solution(_ num1:Int, _ num2:Int) -> Int {
    return num1 + num2
}

//두수의 차
func solution1(_ num1:Int, _ num2:Int) -> Int {
    return num1 - num2
}

//두수의 곱

func solution2(_ num1:Int, _ num2:Int) -> Int {
    return num1 * num2
}
//몫 구하기
func solution3(_ num1:Int, _ num2:Int) -> Int {
    return num1 / num2
}

//두 수의 나눗셈
func solution4(_ num1:Int, _ num2:Int) -> Int {
    return  1000 * num1 / num2
}

//숫자 비교하기

func solution5(_ num1:Int, _ num2:Int) -> Int {
    if num1 == num2 {
        return 1
    } else {
          return -1
    }
  
}


//분수의 덧셈 *못품*
func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {

    var top = denum1 * num2 + denum2 * num1
    var bottom = num1 * num2

    var min = top < bottom ? top : bottom

    var j = 2

    while j <= min {
        if top % j == 0 && bottom % j == 0 {
            top /= j
            bottom /= j
            j = 2
            min = top < bottom ? top : bottom
            continue
        }
        j += 1
    }
    return [top, bottom]
}
