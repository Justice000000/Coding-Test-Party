//
//  공원 산책.swift
//  CodingTestPractice
//
//  Created by 박태현 on 2023/07/31.
//

import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    let parkMap = park.map{Array($0)}
    let parkString = park.joined()
    let parkInitialIndex = parkString.distance(
        from: parkString.startIndex,
        to: parkString.firstIndex(of: "S")!
    )

    var position = (parkInitialIndex / park.count, parkInitialIndex % park.first!.count)

    let route: [(Character, Int)] = routes.map{
        let item = $0.components(separatedBy: " ")
        return (Character(item[0]), Int(item[1])!)
    }

    let widthLength = park.first!.count - 1
    let heightLength = park.count - 1

    for (direction, count) in route {
        var check: [Character] = []

        switch direction {
        case "E":
            if position.1 + count > widthLength {
                continue
            }
            if parkMap[position.0][position.1...position.1+count].contains("X") {
                continue
            }
            position = (position.0, position.1 + count)
        case "W":
            if position.1 < count {
                continue
            }
            if parkMap[position.0][position.1-count...position.1].contains("X") {
                continue
            }
            position = (position.0, position.1 - count)
        case "S":
            if position.0+count > heightLength {
                continue
            }
            for i in position.0...position.0+count {
                check.append(parkMap[i][position.1])
            }
            if check.contains("X") {
                continue
            }
            position = (position.0 + count, position.1)
        case "N":
            if position.0 < count {
                continue
            }
            for i in position.0-count...position.0 {
                check.append(parkMap[i][position.1])
            }
            if check.contains("X") {
                continue
            }
            position = (position.0 - count, position.1)
        default:
            break
        }
    }
    return [position.0, position.1]
}

solution(["SOO","OOO","OOO"], ["E 2","S 2","W 1"])
solution(["OSO","OOO","OXO","OOO"], ["E 2","S 3","W 1"])
