#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>

@interface AddressCard: NSObject
{
    NSString *name;
    NSString *email;
}

@property (copy, nonatomic) NSString *name, *email;

-(void) print;
-(void) setName: (NSString *) theName andEmail:(NSString *) theEmail;

@end
