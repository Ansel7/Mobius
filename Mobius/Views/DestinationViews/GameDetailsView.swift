//
//  GameDetailsView.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 6/15/22.
//

import SwiftUI
import RiveRuntime

struct GameDetailsView: View {
    
    @Binding var viewState: ViewState
    
    @EnvironmentObject var game: ARBattleRoyal
    
    @EnvironmentObject var gameCenter: GameCenterViewModel
    
    let details: ScheduledGame
    let button = RiveViewModel(fileName: "button")
    
    var body: some View {
        VStack(spacing:10) {
            
            Text("Game Details")
                .font(.largeTitle)
            
            Text("your game is blah blah")
            
            Divider()
            
            
            button.view()
                .frame(width: 236, height: 64)
                .overlay(
                    Label("Join the Game", systemImage: "arrow.forward")
                        .offset(x: 4, y: 4)
                        .font(.headline)
                )
                .foregroundColor(.black)
                .background(
                    Color.black
                        .cornerRadius(30)
                        .blur(radius: 10)
                        .opacity(0.3)
                        .offset(y: 10)
                )
                .onTapGesture {
                    button.play(animationName: "active")
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        withAnimation(.spring()) {
                            game.setGame(newGame: details)
                            viewState = .gameView
                        }
                    }
                }
                
        }.padding(30)
            .background(.regularMaterial)
            .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .shadow(color: Color("Shadow").opacity(0.3), radius: 5, x: 0, y: 3)
            .shadow(color: Color("Shadow").opacity(0.3), radius: 30, x: 0, y: 30)
            .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(.linearGradient(colors: [.white.opacity(0.8),.white.opacity(0.1)], startPoint: .topLeading, endPoint: .bottomTrailing)))
            .padding()
    }
}
