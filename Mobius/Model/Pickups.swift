//
//  Pickups.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 6/4/22.
//

import Foundation
import CoreLocation

struct Pickup{
    let type: Pickups
    let location: CLLocationCoordinate2D
}

enum Pickups{
    case shotgun(damage: Int = 100, level: PowerLevel = .normal())
    case rifle(damage: Int = 25, level: PowerLevel = .normal())
    case pistol(damage: Int = 15, level: PowerLevel = .normal())
    case knife(damage: Int = 100, level: PowerLevel = .normal())
    case sheild(size: SheildPotionSize)
}

enum PowerLevel{
    case normal(powerMultiplier: Int = 1)
    case plus(powerMultiplier: Int = 2)
    case max(powerMultiplier: Int = 3)
}

enum SheildPotionSize{
    case small(amount: Int = 25)
    case medium(amount: Int = 50)
    case large(amount: Int = 100)
}
