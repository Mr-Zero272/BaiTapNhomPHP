#include<iostream>
using namespace std;
int main() {
    int random = (rand() % 101);
    int number = 1;
    for (;number < 9; number++)
    {
        cout << "INSERT INTO `products` VALUES (" << number <<", 'kid', 'Black Aldas Shoes', 200000, 34, 'assets/images/1.png', '2022-05-11 08:36:57', '2022-05-11 08:36:57', NULL);" <<endl;

    }
    cout << random << endl;
    return 0;
}