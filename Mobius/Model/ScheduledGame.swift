//
//  ScheduledGames.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 6/12/22.
//

import Foundation
import MapKit

struct ScheduledGame{
    let name: String
    let host: String
    let startTime: Date
    
}

struct Game_List{
    
    static let demoGame = [
        ScheduledGame(name: "Super Battle", host: "Abraham", startTime: Date())
    ]
    
}
