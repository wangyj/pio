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
    AddressCard *card2 = [[AddressCard alloc] init];
    [card2 setName: @"ADGD" andEmail: aEmail];
    [card2 print];
    AddressCard *card3 = [[AddressCard alloc] init];
    [card3 setName: @"DSADGD" andEmail: aEmail];
    [card3 print];

    AddressBook *myBook = [AddressBook alloc];

    myBook = [myBook initWithName: @"Linda's Address Book"];
    NSLog (@ "Entries in address book  after creation: %i",
            [myBook entries]);
    [myBook addCard: card2];
    [myBook addCard: card1];
    [myBook addCard: card2];
    [myBook addCard: card3];
    NSLog (@ "Entries in address book  after adding cards: %i",
            [myBook entries]);

    [myBook list];
    [myBook sort];
    [myBook list];
    [card1 release];
    [card2 release];
    [card3 release];


    [pool drain];
    return 0;
}
