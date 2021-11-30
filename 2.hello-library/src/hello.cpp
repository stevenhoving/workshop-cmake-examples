#include "HelloLibrary/hello.h"
#include <iostream>

namespace HelloLibrary
{

Hello::Hello()
{
    std::cout << "Hello ";
}

Hello::~Hello()
{
    // please notice that I don't use `std::endl;`
    std::cout << "world\n";
}

}
