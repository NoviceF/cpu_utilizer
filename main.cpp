#include <iostream>

#include <QTime>

#include <cstdio>


#include "sqrt.h"


int main()
{
    QTime time;
    time.start();
//    foo();
    int difference = time.elapsed();
    std::cout << "Elapsed = " << difference << std::endl;
}
