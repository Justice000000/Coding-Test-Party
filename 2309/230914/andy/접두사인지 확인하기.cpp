// 접두사인지 확인하기
// https://school.programmers.co.kr/learn/courses/30/lessons/181906?language=cpp

#include <string>

using namespace std;

int solution(string my_string, string is_prefix) {

    int range = is_prefix.length();

    for (int i = 0; i < range; i++) {
        if (my_string[i] != is_prefix[i]) {
            return 0;
        }
    }

    return 1;
}
