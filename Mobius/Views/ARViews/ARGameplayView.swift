//
//  ARGameplayView.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 6/1/22.
//

import SwiftUI
import RealityKit
import GameKit

struct ARGameplayView: View{
    
    var ARBRGame: ARBattleRoyal
    
    var body: some View {
        ZStack{
            ARViewContainer(game: ARBRGame)
            FPSLayoutView(game: ARBRGame)
        }

    }
    
}

