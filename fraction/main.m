// First program example

#include "fraction.h"

int main(int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    Fraction *aFraction = [[Fraction alloc] init];
    [aFraction setTo: 100 over: 200];
    [aFraction print];
    [aFraction release];

    [pool drain];
    return 0;
}
