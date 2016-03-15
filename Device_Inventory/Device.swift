//
//  Device.swift
//  Device_Inventory
//
//  Created by Kevin Nguyen on 3/7/16.
//  Copyright © 2016 Kevin Nguyen. All rights reserved.
//

import Foundation
import RealmSwift

class Device: Object {
    
    dynamic var device = ""
    dynamic var model = ""
    dynamic var os = ""
    dynamic var carrier = ""
    dynamic var number = ""
    dynamic var sim = ""
    dynamic var barcode = ""
    dynamic var color = ""
    dynamic var status = ""
    dynamic var available = true
    dynamic var createdAt = NSDate()
    
// Specify properties to ignore (Realm won't persist these)
    
//  override static func ignoredProperties() -> [String] {
//    return []
//  }
}
