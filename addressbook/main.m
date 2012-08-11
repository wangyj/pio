// First program example

#import "addresscard.h"
#import "addressbook.h"
#import <Foundation/NSAutoreleasePool.h>

int main(int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    NSString *aName = @ "Julia Kocha ";
    NSString *aEmail = @ "jew@axlc.com ";
    AddressCard *card1 = [[AddressCard alloc] init];
    [card1 setName: aName andEmail: aEmail];
    [card1 print];

    AddressBook *myBook = [AddressBook alloc];

    myBook = [myBook initWithName: @"Linda's Address Book"];
    NSLog (@ "Entries in address book  after creation: %i",
            [myBook entries]);
    [myBook addCard: card1];
    [myBook addCard: card1];
    NSLog (@ "Entries in address book  after adding cards: %i",
            [myBook entries]);

    [myBook list];
    [card1 release];

    [pool drain];
    return 0;
}
