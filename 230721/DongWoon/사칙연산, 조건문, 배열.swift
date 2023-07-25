


// 두 수의 나눗셈
func solution(_ num1:Int, _ num2:Int) -> Int {
    let dividedNumber = Float(num1) / Float(num2)
    let dividedNumberCrossThousand = dividedNumber * 1000
    let integer = Int(dividedNumberCrossThousand)

    return integer
}


// 숫자 비교하기

func solution(_ num1:Int, _ num2:Int) -> Int {
    return num1 == num2 ? 1 : -1
}


// 분수의 덧셈
// 첫 번째 분수의 분자와 분모를 뜻하는 numer1, denom1, 
// 두 번째 분수의 분자와 분모를 뜻하는 numer2, denom2가 매개변수로 주어집니다. 
// 두 분수를 더한 값을 기약 분수로 나타냈을 때 분자와 분모를 순서대로 담은 배열을 return 하도록 solution 함수를 완성해보세요.

func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {

    let sameDenom = denom1 * denom2 
    let changedNumer1 = numer1 * denom2
    let changedNumer2 = numer2 * denom1

    var minDenom = sameDenom
    var sumOfNum = changedNumer1 + changedNumer2

    for divisor in getDivisors(number: sameDenom) {
        if sumOfNum % divisor == 0 {
            sumOfNum = sumOfNum / divisor
            minDenom = minDenom / divisor
        }
    }

    return [sumOfNum, minDenom]
}

func getDivisors(number: Int) -> [Int] {
    var result = [Int]()

    for num in 1...number {
        if number % num == 0 {
            result.append(num)
        }
    }
    return result
}


// MARK: - 유클리드 호제법을 사용해서 최대 공약수 구하기
func gcd(_ a: Int, _ b: Int) -> Int {
    if a % b == 0 {
        return b
    }
    return gcd(b, a % b)
}