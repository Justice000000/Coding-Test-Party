// [프로그래머스] 길이에 따른 연산 https://school.programmers.co.kr/learn/courses/30/lessons/181879

import Foundation

func solution(_ num_list: [Int]) -> Int {

    if num_list.count >= 11 { return num_list.reduce(0, +) }
    else { return num_list.reduce(1, *) }

    return 0
}
