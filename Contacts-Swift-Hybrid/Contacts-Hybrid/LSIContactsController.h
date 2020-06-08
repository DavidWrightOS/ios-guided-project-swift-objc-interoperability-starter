//
//  LSIContactsController.h
//  Contacts-Hybrid
//
//  Created by David Wright on 6/2/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LSIContact;

// NS_SWIFT_NAME(SwiftName) - Rename an Objective-C class for use in Swift
// Macros are always named using all caps
NS_SWIFT_NAME(ContactsController)
@interface LSIContactsController : NSObject

// Nullability Flags - change how the object is imported into Swift

// nullable           ->  [Contact]?
// nonnull            ->  [Contact]
// null_resettable    ->  [Contact]?
// null_unspecified*  ->  [Contact]!    // this is the default

// Use lightweight generics to provide type information (so it's easier to use in Swift)
//@property (nonatomic ,readonly, copy, nonnull) NSArray *contacts;
@property (nonatomic ,readonly, copy, nonnull) NSArray<LSIContact *> *contacts;

- (nonnull LSIContact *)contactAtIndex:(NSInteger)index;

@property (nonatomic, readonly) NSInteger contactCount;

@end
