//
//  ScheduledGames.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 6/12/22.
//

import Foundation
import MapKit

struct ScheduledGame: Identifiable{
    let name: String
    let id = UUID()
    let host: String
    let startTime: String
//    var color: Color
//    var image: Image
    
}

struct Game_List{
    
    static let demoGame = [
        ScheduledGame(name: "Super Battle", host: " Abraham ", startTime: "07/26/2022"),
        ScheduledGame(name: "Fun Battle", host: " Abraham ", startTime: "07/26/2022"),
        ScheduledGame(name: "Day Battle", host: " Abraham ", startTime: "07/26/2022")
    ]
    
}
