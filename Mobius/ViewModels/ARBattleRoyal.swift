//
//  ARBattleRoyal.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 5/29/22.
//

import SwiftUI
import ARKit
import RealityKit

class ARBattleRoyal : ObservableObject{
    
    private var model: BattleRoyal
    
    //var players: Array<BattleRoyal.Player>
    
    init(){
        
        model = BattleRoyal()
        
       // players = model.players
        
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
        
        return
    }
}
