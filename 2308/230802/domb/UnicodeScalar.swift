
//
func solution(age: Int) {
    let alphabetAge: String = String(age, radix: 10)
        .compactMap { Int(String($0)) }
        .map { String(UnicodeScalar($0 + 97)!) }
        .joined()

    return alphabetAge
}

func solution(_ age:Int) -> String {
    return String(age).reduce("") { $0 + String(UnicodeScalar(97 + Int(String($1))!)!)}
}