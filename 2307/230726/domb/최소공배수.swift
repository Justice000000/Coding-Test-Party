

// 최소공배수 (GCD 활용)

func gcd(_ num1: Int, _ num2: Int) -> Int {
    if num1 > num2 {
        if num1 % num2 == 0 {
            return num2
        } else {
            return gcd(num2, num1 % num2)
        }
    } else {
        if num2 % num1 == 0 {
            return num1
        } else {
            return gcd(num1, num2 % num1)
        }
    }
}

func solution(_ n:Int) -> Int {
    let gcd = gcd(n,6)
    let result = 6 * n / gcd
    return result
}

// 미친 해결법 ⭐️⭐️
func solution(_ n:Int) -> Int {
    // n과 6의 최대공약수로 n을 나눈 값을 리턴
    let div: [Int] = [6,3,2,1].filter {n % $0 == 0}
    return (n / div[0])
}