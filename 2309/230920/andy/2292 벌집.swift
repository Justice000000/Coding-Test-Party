// https://www.acmicpc.net/problem/2292

import Foundation

let n = Int(readLine()!)!

var offset = 1
var range = 1

while true {
    if n == 1 {
        break
    } else if range >= n {
        break
    }
    range = range + offset * 6
    offset += 1
}

print(offset)
