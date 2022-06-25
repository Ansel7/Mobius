//
//  ARGameplayView.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 6/1/22.
//

import SwiftUI
import RealityKit
import GameKit
import RiveRuntime

struct ARGameplayView: View {
    
    @Binding var viewState: ViewState
    
    @EnvironmentObject var game: ARBattleRoyal
    
    @EnvironmentObject var gameCenter: GameCenterViewModel
    
    @State var isMapSelected = false
    
    let arMtlView = ARMtlView()
    
    let shootButton = RiveViewModel(fileName: "shootingbutton")
    
    var body: some View {
        
        ZStack{
            arMtlView
            hud
        }
    }
    
    var hud: some View{
        HStack{
            Spacer()
            VStack{
                MiniMap()
                    .frame(width: isMapSelected ? 400 : 150, height: isMapSelected ? 400 : 150, alignment: .topTrailing)
                
                    .offset(x: isMapSelected ? 20 : 0, y: isMapSelected ? 15 : 0)
                
                    .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))
                
                    .onTapGesture{
                        withAnimation(.spring()){
                            isMapSelected.toggle()
                        }
                    }
                
                    .padding()
                
                Spacer()
                if !isMapSelected {
                shootButton.view()
                    .overlay(
                        Text("💥")
                    )
                    .onTapGesture{
                        shootButton.play(animationName: "45Rotation")
                        arMtlView.placeAnchor()
                        
                    }
                    .padding()
                    .offset(x: -10)
                    .frame(width: 150, height: 150)
                }
            }
        }
    }
}

