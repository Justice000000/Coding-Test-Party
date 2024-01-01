import Foundation

//MARK: - Structure
struct BOJ_18884 {
    let n, m: Int
    let systemN, systemM: [String]
    let q: Int
    
    func findGCD() -> Int {
        var (a, b) = ( (n >= m) ? (n, m) : (m, n) )
        
        while b != 0 {
           (a, b) = (b, a % b)
        }
        
        return a
    }
    
    func findLCM() -> Int {
        let gcd = findGCD()
        let lcm = n * m / gcd
        
        return lcm
    }
    
    func convertToSystem(input: Int, lcm: Int) -> String {
        let remain = input % lcm
        let indexN = remain % n
        let indexM = remain % m
        let elementN = systemN[indexN]
        let elementM = systemM[indexM]
        
        return elementN + elementM
    }
}

//MARK: - Input
let inputNM = readLine() ?? ""
let arrayNM = inputNM.split(separator: " ").map { Int($0) ?? 1 }
let (n, m) = (arrayNM[0], arrayNM[1])

let systemN = (readLine() ?? "").split(separator: " ").map { String($0) }
let systemM = (readLine() ?? "").split(separator: " ").map { String($0) }
let q = Int( (readLine() ?? "") ) ?? 1

let boj = BOJ_18884(
    n: n,
    m: m,
    systemN: systemN,
    systemM: systemM,
    q: q
)
let lcm = boj.findLCM()

//MARK: - Output
for _ in 0..<q {
    let input = Int(readLine() ?? "") ?? 1
    let result = boj.convertToSystem(input: input - 1, lcm: lcm)
    
    print(result)
}

