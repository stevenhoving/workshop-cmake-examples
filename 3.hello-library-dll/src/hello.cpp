#include "HelloLibraryDll/hello.h"
#include <iostream>

namespace HelloLibrary
{

Hello::Hello()
{
    std::cout << "Hello ";
}

Hello::~Hello()
{
    std::cout << "world\n";
}

}
