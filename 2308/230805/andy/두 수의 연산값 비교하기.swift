// 프로그래머스
// 두 수의 연산값 비교하기
// https://school.programmers.co.kr/learn/courses/30/lessons/181938

import Foundation

func solution(_ a: Int, _ b: Int) -> Int {

    let operatedNum = specialOperator(numOne: a, numTwo: b)
    let defaultNum = 2 * a * b

    let result = operatedNum > defaultNum ? operatedNum : defaultNum

    return result
}

func specialOperator(numOne: Int, numTwo: Int) -> Int {
    return Int(String(numOne) + String(numTwo)) ?? 0
}
