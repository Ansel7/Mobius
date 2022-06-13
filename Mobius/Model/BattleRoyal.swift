//
//  BattleRoyal.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 5/27/22.
//

import Foundation
import GameKit
import SwiftUI
import CoreLocation

struct BattleRoyal: Codable{
    
    
    
}
//Battle Royal Player
struct Player: Identifiable{

      let id: Int
      let image: String
      let name: String
      let color: Color
      var location: CLLocationCoordinate2D
      var health: Int
      var sheild: Int
      
      //the first strike buffer will reduce the burden caused by your phone being necessary to interact with the world
      private(set) var firstStrikeBuffer = 0
      
      //the player will have a bunch of items in their item pool
      private(set) var items: [Pickups]

      //Store the players location
  }

//
extension BattleRoyal {
    
    //
    func encode() -> Data? {
        return try? JSONEncoder().encode(self)
    }
    
    //
    static func decode(data: Data) -> BattleRoyal? {
        return try? JSONDecoder().decode(BattleRoyal.self, from: data)
    }
    
}
