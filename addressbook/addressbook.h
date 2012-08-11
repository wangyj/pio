#import <Foundation/NSArray.h>
#import "addresscard.h"

@interface AddressBook: NSObject
{
    NSString *bookName;
    NSMutableArray *book;
}

-(id) initWithName: (NSString *) name;
-(void) addCard: (AddressCard *) theCard;
-(int) entries;
-(void) list;
-(void) dealloc;
-(void) sort;

@end
