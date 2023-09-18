//
//  main.swift
//  핸드폰 번호 가리기
//
//  Created by 백래훈 on 2023/09/19.
//

import Foundation

func solution(_ phone_number: String) -> String {
    
    var pNumber = phone_number
    var result = ""
    
    if pNumber.count == 4 {
        result = "****"
    } else {
        for i in 0..<pNumber.count {
            if i >= pNumber.count - 4 {
                result += "\(pNumber[i]!)"
            } else {
                result += "*"
            }
        }
    }
    print(result)
    return result
}

func solution2(_ phone_number:String) -> String {
    
    var answer = ""
    
    let last = phone_number.prefix(phone_number.count - 4)

    for i in last {
        answer += "*"
    }
    
    answer += phone_number.suffix(4)

    return String(answer)
}

solution2("01033334444")

extension String {
    subscript(idx: Int) -> String? {
        guard (0..<count).contains(idx) else {
            return nil
        }
        
        let result = index(startIndex, offsetBy: idx)
        return String(self[result])
        
    }
}
