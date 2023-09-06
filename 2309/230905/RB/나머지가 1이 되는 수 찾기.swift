//
//  main.swift
//  나머지가 1이 되는 수 찾기
//
//  Created by 백래훈 on 2023/09/06.
//

import Foundation

func solution(_ n: Int) -> Int {
    
    var result: [Int] = []
    
    for i in 1...n {
        if n % i == 1 {
            result.append(i)
        }
    }
    
    let soredResult = result.sorted(by: <)
    
    return soredResult[0]
}
