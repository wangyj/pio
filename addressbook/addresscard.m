#import "addresscard.h"

@implementation AddressCard

@synthesize name, email;

-(void) print
{
	NSLog (@ "=========================================== ");
	NSLog (@ "|                                         | ");
	NSLog (@ "| %-31s | ", [name UTF8String]);
	NSLog (@ "| %-31s | ", [email UTF8String]);
	NSLog (@ "|                                         | ");
	NSLog (@ "=========================================== ");
}

-(void) setName: (NSString *) theName andEmail:(NSString *) theEmail
{
    self.name = theName;
    self.email = theEmail;
}

@end
