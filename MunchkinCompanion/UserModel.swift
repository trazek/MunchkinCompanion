//
//  UserModel.swift
//  MunchkinCompanion
//
//  Created by Alex Gaesser on 1/31/15.
//  Copyright (c) 2015 AlexGaesser. All rights reserved.
//

import Foundation
import CoreData

@objc(UserModel)
class UserModel: NSManagedObject {

    @NSManaged var level: NSNumber
    @NSManaged var combat: NSNumber
    @NSManaged var oneShot: NSNumber
    @NSManaged var monsterCombatStrength: NSNumber
    @NSManaged var netCombatResult: NSNumber
    @NSManaged var effectiveCombat: NSNumber
    @NSManaged var userName: String

}
