func solution(_ balls:Int, _ share:Int) -> Int {
    if balls == share {
        return 1
    }
    
    let answer = factorial(balls) / factorial(balls - share) / factorial(share)
    return Int(NSDecimalNumber(decimal: answer))
}

func factorial(_ n: Int) -> Decimal {
    var num: Decimal = Decimal(1)
    for i in 1...n {
        num *= Decimal(i)
    }
    return num
}