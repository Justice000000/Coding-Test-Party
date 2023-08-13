func solution(_ cipher:String, _ code:Int) -> String {
    var result = ""
    let chars: [Character] = Array(cipher)
    let cipherCount = cipher.count
    let repeatCount = cipherCount / code
    for i in (1...repeatCount) {
        result += String(chars[i*code - 1])
    }
    return result
}
