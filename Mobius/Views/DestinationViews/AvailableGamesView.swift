//
//  AvailableGamesView.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 6/9/22.
//

import SwiftUI

struct AvailableGamesView: View {
    
    @Binding var viewState: ViewState
    
    @EnvironmentObject var game: ARBattleRoyal
    
    @EnvironmentObject var gameCenter: GameCenterViewModel
    
    @State var showGameDetails = false
    
    @State var selectedGame: ScheduledGame?
    
    var body: some View {
        
        ZStack{
            content
                .offset(y: showGameDetails ? 50 : 0)
            
            Color("Shadow")
                .opacity(showGameDetails ? 0.4 : 0)
                .ignoresSafeArea()
            
            if showGameDetails {
                GameDetailsView(viewState: $viewState, details: selectedGame!)
                    .transition(.move(edge: .bottom).combined(with: .opacity))
                    .overlay(
                        Button {
                            withAnimation(.spring()){
                                showGameDetails = false
                                
                            }
                        } label: {
                        Image(systemName: "xmark")
                            .frame(width: 36, height: 36)
                            .foregroundColor(.black)
                            .background(.white)
                            .mask(Circle())
                            .shadow(color: Color("Shadow").opacity(0.3), radius: 5, x: 0, y: 3)
                        }
                            .frame(maxHeight: .infinity, alignment: .bottom)
                    )
                    .zIndex(1)
            }
        }
        
    }
    
    var content: some View {
        
        let gamelist = gameCenter.getGames()
        
        return VStack {
            
            Spacer()
            
            TextRect(stringData: "Game List", columnData: Text("Game List"))
                .padding(40)
            
            Spacer()
            
            ScrollView {
                
                VStack {
                    
                    ForEach (gamelist) { value in
                        
                        TextRectRow(game: value)
                            .onTapGesture {
                                selectedGame = value
                                DispatchQueue.main.asyncAfter(deadline: .now()) {
                                    withAnimation(.spring()) {
                                        
                                        showGameDetails = true
                                    }
                                                                    }
                            }
                    }
                    
                }
                .frame(maxWidth: .infinity)
                
            }
        }
    }
}
