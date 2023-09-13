func solution(_ n:Int) -> Int {
    
    var currentNumber = n
    var isFinished = false
    
    while !isFinished {

        if String(n, radix: 2).replacing("0", with: "") == String(currentNumber + 1, radix: 2).replacing("0", with: "") {
            isFinished = true
        }

        currentNumber += 1
    }
    
    return currentNumber
}

// filter가 시간 복잡도가 더 적음???

func solution(_ n:Int) -> Int {

    var currentNumber = n
    var isFinished = false

    while !isFinished {

        if String(n, radix: 2).filter { $0 == "1"}.count == String(currentNumber + 1, radix: 2).filter { $0 == "1"}.count {
            isFinished = true
        }

        currentNumber += 1
    }

    return currentNumber
}