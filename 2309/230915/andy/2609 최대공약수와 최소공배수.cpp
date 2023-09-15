// https://www.acmicpc.net/problem/2609

#include <iostream>

using namespace std;

int get_gcd(int a, int b);

int main(void) {
    int a, b;
    cin >> a >> b;

    int gcd = get_gcd(a, b);
    int lcm = a * b / get_gcd(a, b);

    printf("%d\n%d\n", gcd, lcm);

    return 0;
}

int get_gcd(int a, int b) {

    return a % b == 0 ? b : get_gcd(b, a % b);
}
