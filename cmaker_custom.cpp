#include <iostream>
#include <cstdlib>

using namespace std;

int main()
{
    system("mkdir build && cd build && cmake .. &&  cmake --build . && ./Exec ");
    return 0;
}