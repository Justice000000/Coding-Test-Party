// String 배열의 값을 하나로 합칠 때 사용

[1,2,3,4,5,6].joined() // X 
[1,2,3,4,5,6].map { String($0) }.joined() // O

["a","b", "c"].joined()