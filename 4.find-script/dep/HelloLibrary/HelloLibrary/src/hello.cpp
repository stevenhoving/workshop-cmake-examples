#include "HelloLibraryDll/hello.h"

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
