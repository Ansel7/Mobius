//
//  ARBattleRoyal.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 5/29/22.
//

import SwiftUI
import ARKit
import RealityKit
import GameKit
import Combine

class ARBattleRoyal : ObservableObject{
    
    private var model: BattleRoyal
    
    @Published var gameCenter = GameCenterViewModel()
    
    public init(gameCent: GameCenterViewModel) {
        
        gameCenter = gameCent
        
        model = BattleRoyal()

        //Check current location is supported for geo tracking
        ARGeoTrackingConfiguration.checkAvailability{ (available, error) in
            guard available else {
                //Geo-tracking not supported at current location
                return
            }

            //Run ARSession
            let arView = ARView()
            arView.session.run(ARGeoTrackingConfiguration())
        }
    }
    
//
//    func startGame() -> some View{
//
//
//    }
    
    func wield(){
        
    }
    
}
