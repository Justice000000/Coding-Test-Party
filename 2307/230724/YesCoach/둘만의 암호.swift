//
//  둘만의 암호.swift
//  CodingTestPractice
//
//  Created by 박태현 on 2023/07/24.
//

import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {

    let aAscii = Int(UnicodeScalar("a").value)
    let zAscii = Int(UnicodeScalar("z").value)

    var skips = skip.map{Int(UnicodeScalar(String($0))!.value)}
    var result = ""

    for character in s {

        // 1. 문자의 아스키 값을 사용
        var value = Int(UnicodeScalar(String(character))!.value)

        // 2. index만큼 아스키 값 증가
        // 2-1. z에서 넘어가는 경우 a로 초기화
        // 2-2. skip 문자가 포함될 경우 index 증가 x
        var indexCount = 0
        while indexCount < index {
            value += 1

            if value > zAscii {
                value = aAscii
            }

            if skips.contains(value) {
                continue
            } else {
                indexCount += 1
            }
        }
        // 3. 결과로 반환할 변수에 해당 문자열 붙이기
        result += String(UnicodeScalar(value)!)
    }

    return result
}
