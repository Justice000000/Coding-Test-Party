//
//  main.swift
//  옷가게 할인 받기
//
//  Created by 백래훈 on 2023/08/28.
//

import Foundation

func solution(_ price: Int) -> Int {
    
    var result: Int = 0
    
    switch price {
    case 10..<100000:
        result = price
    case 100000..<300000:
        result = Int((Double(price) * 0.95))
    case 300000..<500000:
        result = Int((Double(price) * 0.9))
    case 500000...1000000:
        result = Int((Double(price) * 0.8))
    default:
        return price
    }
    return result
}

solution(322222)
