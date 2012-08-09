#import "fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

-(double) convertToNum
{
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return 1;
}

-(void) setTo: (int) n over: (int) d
{
    denominator = d;
    numerator = n;
}

@end
