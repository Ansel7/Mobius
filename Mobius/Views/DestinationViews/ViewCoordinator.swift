//
//  ViewCoordinator.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 6/21/22.
//

import SwiftUI
import RiveRuntime

enum ViewState{
    case start, availableGames, gameView
}

struct ViewCoordinator: View {
    
    @ObservedObject var game = ARBattleRoyal()
    @ObservedObject var gameCenter = GameCenterViewModel()
    
    @State var viewState = ViewState.start
    
    var body: some View {
        
        VStack{
            
            switch viewState {
                
                case .start:
                    ZStack {
                        
                        background
                        
                        StartView(viewState: $viewState)
                            .environmentObject(game)
                        
                            .environmentObject(gameCenter)
                        
                    }
                    
                case .availableGames:
                    ZStack {
                        
                        background
                        
                        AvailableGamesView(viewState: $viewState)
                            .environmentObject(game)
                        
                            .environmentObject(gameCenter)
                        
                    }
                
                case .gameView:
                
                    ARGameplayView(viewState: $viewState)
                        .environmentObject(game)
                    
                        .environmentObject(gameCenter)
                
                }
            
        }
        .background(Color(#colorLiteral(red: 0.9014388723, green: 0.9502404661, blue: 0.9663364551, alpha: 1)))
        
        .edgesIgnoringSafeArea(.all)
        
    }
    
    var background: some View{
        RiveViewModel(fileName: "shapes").view()
            .blur(radius: 30)
            .background(
                Image("Spline")
                    .blur(radius: 50)
                    .offset(x: 200, y: 100)
            )
    }
    
}

struct ViewCoordinator_Previews: PreviewProvider {
    static var previews: some View {
        ViewCoordinator()
    }
}
