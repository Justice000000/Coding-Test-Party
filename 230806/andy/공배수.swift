// 프로그래머스
// 공배수
// https://school.programmers.co.kr/learn/courses/30/lessons/181936

import Foundation

func solution(_ number: Int, _ n: Int, _ m: Int) -> Int {

    if number % n == 0 && number % m == 0 { return 1 }
    else { return 0 }
}
