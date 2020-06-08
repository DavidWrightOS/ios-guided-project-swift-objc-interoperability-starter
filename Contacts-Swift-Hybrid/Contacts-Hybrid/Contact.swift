//
//  Contact.swift
//  Contacts-Hybrid
//
//  Created by David Wright on 6/2/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

import Foundation

// To use this in Objective-C we need to subclass from NSObject
// Swift Structs are not compatible with Objective-C structures

// @objc                   - Exposes a class and any of its properties or methods
// @objcMembers            - Apply @objc to entire class including all of its properties and methods
// @objc(newNameForObjc)   - Rename class, properties, and methods for use in Objective-C
@objc(LSIContact)
class Contact: NSObject {
    
    @objc var name: String // nonnull
    @objc var relationship: String? // nullable
    
    // If you want to expose the default initializer to Objective-C
    // you must Must override and implement it with the @objc pre-fix
    /*
    @objc override init() {
        self.name = ""
        self.relationship = nil
        // no need to call super.init() here because Swift will add it for you behind the scenes
    }
    */
    
    @objc init(name: String, relationship: String?) {
        self.name = name
        self.relationship = relationship
    }
}
