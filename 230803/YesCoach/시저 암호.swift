//
//  시저 암호.swift
//  CodingTestPractice
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/12926
//  Created by 박태현 on 2023/08/03.
//

import Foundation

func solution(_ s:String, _ n:Int) -> String {
    let alphabets = "abcdefghijklmnopqrstuvwxyz".map { $0 }

    return String(s.map{
        guard let index = alphabets.firstIndex(of: Character($0.lowercased()))
        else { return $0 }

        let alphabet = alphabets[(index + n) % alphabets.count]
        return $0.isUppercase ? Character(alphabet.uppercased()) : alphabet
    })
}
