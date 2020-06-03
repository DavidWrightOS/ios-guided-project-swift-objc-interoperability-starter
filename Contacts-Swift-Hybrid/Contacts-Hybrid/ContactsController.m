//
//  ContactsController.m
//  Contacts-Hybrid
//
//  Created by David Wright on 6/2/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "ContactsController.h"
#import "Contacts_Hybrid-Swift.h"

@interface ContactsController ()

@property (nonatomic) NSMutableArray *internalContacts;

@end

@implementation ContactsController

- (instancetype)init
{
    if (self = [super init]) {
        _internalContacts = [[NSMutableArray alloc] init];
        
        Contact *contact = [[Contact alloc] initWithName:@"David" relationship:@"Myself"];
        [_internalContacts addObject:contact];
    }
    return self;
}

- (NSArray *)contacts
{
    return _internalContacts.copy;
}

@end
