// [프로그래머스] 캐릭터의 좌표 https://school.programmers.co.kr/learn/courses/30/lessons/120861

import Foundation

func solution(_ keyInput: [String], _ board: [Int]) -> [Int] {

    var x = 0
    var y = 0
    let xRange = board[0] / 2
    let yRange = board[1] / 2

    for direction in keyInput {
        if direction == "up" && y + 1 <= yRange { y += 1 }
        else if direction == "down" && y - 1 >= -1 * yRange { y -= 1 }
        else if direction == "left" && x - 1 >= -1 * xRange { x -= 1 }
        else if direction == "right" && x + 1 <= xRange { x += 1 }
    }

    return [x, y]
}
