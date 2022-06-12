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
    
    //var players: Array<BattleRoyal.Player>
    
    @Published public var gkInvite: GKInvite?
    @Published public var gkMatch: GKMatch?
    
    private var cancellableInvite: AnyCancellable?
    private var cancellableMatch: AnyCancellable?
    private var cancellableLocalPlayer: AnyCancellable?
    
    public init() {
        
        model = BattleRoyal()
        
//        self.cancellableInvite = GKMatchManager
//            .shared
//            .invite
//            .sink { (invite) in
//                self.gkInvite = invite.gkInvite
//            }
//        self.cancellableMatch = GKMatchManager
//            .shared
//            .match
//            .sink { (match) in
//                self.gkMatch = match.gkMatch
//            }
//        self.cancellableLocalPlayer = GKMatchManager
//            .shared
//            .localPlayer
//            .sink { (localPlayer) in
//                // current GKLocalPlayer.local
//            }
//
//        // players = model.players

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
    
    deinit {
        self.cancellableInvite?.cancel()
        self.cancellableMatch?.cancel()
        self.cancellableLocalPlayer?.cancel()
    }
    
    func startGame() -> some View{
        
        return StartView()
        
    }
    
    func wield(){
        
    }
    
}
