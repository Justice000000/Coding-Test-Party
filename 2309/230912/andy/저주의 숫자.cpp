// https://school.programmers.co.kr/learn/courses/30/lessons/120871

#include <string>
#include <vector>

using namespace std;

int solution(int n) {

    int answer;
    int count = 0;
    int number = 0;
    string three = "3";

    while (true) {
        count += 1;
        number += 1;

        for (int i = 1; i <= n; i++) {
            if (number % 3 == 0 || to_string(number).find(three) != string::npos) {
                number += 1;
            }
        }

        if (count == n) {
            break;
        }
    }

    answer = number;

    return answer;
}
