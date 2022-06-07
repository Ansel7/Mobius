//
//  BattleRoyal.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 5/27/22.
//

import Foundation
import GameKit
import CoreLocation

struct BattleRoyal: Codable{
    
//    //list of players that have joined the match
   // lazy private(set) var players: Array<Player>
//    private(set) var location: CLLocationCoordinate2D
//    
//    //The
//    func choose(_ player: Player) {
//        let chosenIndex = index(of: player)
//        print("Hello")
//    }
//
//    func index(of: Player) -> Int {
//        return 0
//    }
//
//    init(numPlayers: Int, aquiredPlayerList: Array<Player>){
//        players = aquiredPlayerList
//    }
//
    
    //Battle Royal Player
    struct Player: Identifiable{

        var id: Int
        var location: CLLocationCoordinate2D
        var health: Int
        var sheild: Int
        //the first strike buffer will reduce the burden caused by your phone being necessary to interact with the world
        private(set) var firstStrikeBuffer = 0
        
        //the player will have a bunch of items in their item pool
        private(set) var items: [Pickups]
        
//        init(){
//
//        }

        //Store the players location
    }
    
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
