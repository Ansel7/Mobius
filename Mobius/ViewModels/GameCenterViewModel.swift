//
//  GameCenterViewModel.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 6/12/22.
//

import SwiftUI

class GameCenterViewModel: ObservableObject {
    
    @Published private var utils = GameCenterUtils()
    
    func loginToGameCenter(){
        utils.authenticateUser()
    }
    
    func getGames() -> [ScheduledGame] {
        utils.availableGames
    }
    
}
