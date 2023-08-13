// 정수 배열 numbers와 정수 num1, num2가 매개변수로 주어질 때, 
// numbers의 num1번 째 인덱스부터 num2번째 인덱스까지 자른 정수 배열을 return 하도록 solution 함수를 완성해보세요.

// 나의 답
func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
    return numbers.dropFirst(num1).dropLast(numbers.count - num2 - 1)
}

// 다른 사람 풀이
func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
    return (num1...num2).map{numbers[$0]}
}

func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
    return Array(numbers[num1...num2])
}


// 결론: 배열의 subscript가 range를 지원한다.
[1,2,3,4,5,5,6,7,8,9,9][2...4] // [3,4,5]
