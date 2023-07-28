import Foundation

// https://school.programmers.co.kr/learn/courses/30/lessons/181916

func solution(_ a: Int, _ b: Int, _ c: Int, _ d: Int) -> Int {

    var numberArray = [a, b, c, d]
    numberArray.sort()

    let first = numberArray[0]
    let second = numberArray[1]
    let third = numberArray[2]
    let last = numberArray[3]

    if first == last {
        return 1111 * first
    } else if first == third {
        return (10 * first + last) * (10 * first + last)
    } else if second == last {
        return  (10 * last + first) * (10 * last + first)
    } else if first == second && third == last {
        return (first + last) * abs(first - last)
    } else if first == second {
        return third * last
    } else if second == third {
        return first * last
    } else if third == last {
        return first * second
    } else {
        return first
    }

    return 0
}