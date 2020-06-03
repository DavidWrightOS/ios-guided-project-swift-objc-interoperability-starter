//
//  LSIContactsController.h
//  Contacts-Hybrid
//
//  Created by David Wright on 6/2/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Contact;

NS_ASSUME_NONNULL_BEGIN

NS_SWIFT_NAME(ContactsController)
@interface LSIContactsController : NSObject

@property (nonatomic ,readonly, copy) NSArray<Contact *> *contacts;

@end

NS_ASSUME_NONNULL_END
