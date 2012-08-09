// First program example

#include "fraction.h"

int main(int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    Fraction *aFraction = [[Fraction alloc] init];
    [aFraction setTo: 100 over: 200];
    [aFraction print];
    [aFraction release];

	Fraction *a, *b;
	a = [[Fraction alloc] initWith: 1: 3];
	b = [[Fraction alloc] initWith: 5: 7];
	[a print];
	[b print];
    [a release];
    [b release];

    [pool drain];
    return 0;
}
