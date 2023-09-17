#include <iostream>
#include <string>

using namespace std;

int main() {

    string str;

    for (int i = 0; i < 3; i++) {

        cin >> str;

        int leng = str.length();
        int contiguous_max = 1;
        int count = 1;
        int temp;

        for (int j = 0; j < leng; j++) {

            if (j == 0) {
                temp = str[j];
                continue;
            }

            if (str[j] == temp) {
                count += 1;

                if (count > contiguous_max) {
                    contiguous_max = count;
                }
            } else {
                temp = str[j];
                count = 1;
                continue;
            }

        }

        cout << contiguous_max << "\n";
    }

    return 0;
}
