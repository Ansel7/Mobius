//
//  ARBattleRoyal.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 5/29/22.
//

import SwiftUI
import ARKit
import RealityKit
//import GameKit

class ARBattleRoyal : ObservableObject{
    
    private var model: BattleRoyal = BattleRoyal()
    
    private var game: ScheduledGame? = nil
    
    init() {

        //Check current location is supported for geo tracking
        ARGeoTrackingConfiguration.checkAvailability{ (available, error) in
            guard available else {
                //Geo-tracking not supported at current location
                return
            }
        }
    }
    
    func setGame(newGame: ScheduledGame) {
        game = newGame
    }
    
    func wield(){
        
    }
    
}
