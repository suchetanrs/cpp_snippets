#include <iostream>
#include <thread>
#include <chrono>


int main(int argc, char* argv[])
{
    std::cout << "Hello from OriginalPackage!" << std::endl;
    std::this_thread::sleep_for(std::chrono::seconds(1));
    std::cout << "Hello from OriginalPackage after sleeping!" << std::endl;

    std::cout << "Number of arguments: " << argc << std::endl;
    for (int i = 0; i < argc; ++i) {
        std::cout << "argv[" << i << "] = " << argv[i] << std::endl;
    }
    return 0;
}