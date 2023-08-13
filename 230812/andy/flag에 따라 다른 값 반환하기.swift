// [프로그래머스] flag에 따라 다른 값 반환하기 https://school.programmers.co.kr/learn/courses/30/lessons/181933

import Foundation

func solution(_ a: Int, _ b: Int, _ flag: Bool) -> Int {
    return flag == true ? a + b : a - b
}
