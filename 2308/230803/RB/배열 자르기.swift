//
//  main.swift
//  배열 자르기
//
//  Created by 백래훈 on 2023/08/03.
//

import Foundation

func solution(_ numbers: [Int], _ num1: Int, _ num2: Int) -> [Int] {
    return (num1...num2).map { numbers[$0] }
}
