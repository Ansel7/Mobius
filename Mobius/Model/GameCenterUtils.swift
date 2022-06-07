//
//  GameCenterUtils.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 6/1/22.
//

import Foundation
import GameKit

struct GameCenterUtils{
    
    //
    let localPlayer = GKLocalPlayer.local
    
    //
    func authenticateUser(){
        
        localPlayer.authenticateHandler = { vc, error in
            guard error == nil else {
                print(error?.localizedDescription ?? "")
                return
            }
            GKAccessPoint.shared.isActive = localPlayer.isAuthenticated
        }
        
    }
}
