// 프로그래머스
// 직사각형 넓이 구하기
// https://school.programmers.co.kr/learn/courses/30/lessons/120860

import Foundation

func solution(_ dots: [[Int]]) -> Int {
    
    let firstDot = dots[0]
    var width = 0
    var height = 0
    
    for dot in dots {
        if dot == firstDot { continue }
        if firstDot[0] == dot[0] { height = absolute(firstDot[1], dot[1]) }
        if firstDot[1] == dot[1] { width = absolute(firstDot[0], dot[0]) }
    }
    return width * height
}

func absolute(_ a: Int, _ b: Int) -> Int {
    if a >= b { return a - b }
    else { return b - a }
}