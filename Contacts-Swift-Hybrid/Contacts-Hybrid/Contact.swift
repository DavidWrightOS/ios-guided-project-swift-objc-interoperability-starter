//
//  Contact.swift
//  Contacts-Hybrid
//
//  Created by David Wright on 6/2/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

import Foundation

// @objcMembers
@objc
class Contact: NSObject {
    
    @objc var name: String
    @objc var relationship: String?
    
    @objc init(name: String, relationship: String?) {
        self.name = name
        self.relationship = relationship
    }
}
