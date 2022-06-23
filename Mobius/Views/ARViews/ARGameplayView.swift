//
//  ARGameplayView.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 6/1/22.
//

import SwiftUI
import RealityKit
import GameKit

struct ARGameplayView: View {
    
    @Binding var viewState: ViewState
    
    @EnvironmentObject var game: ARBattleRoyal
    
    @EnvironmentObject var gameCenter: GameCenterViewModel
    
    let view = ARMtlView()
    
    var body: some View {
        view.appears()
        return view

    }
    
}
