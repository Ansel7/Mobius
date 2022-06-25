//
//  GameCard.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 6/25/22.
//

import SwiftUI

struct GameCard: View {
    var game: ScheduledGame
    
    var body: some View {
        VStack{
            Text(game.name)
                .font(.title2)
                .frame(maxWidth: 170, alignment: .leading)
            Text("Host : " + game.host)
                .opacity(0.7)
                .frame(maxWidth: 170, alignment: .leading)
            Text("Start Time : " + game.startTime)
                .font(.footnote)
                .frame(maxWidth: 170, alignment: .leading)
        }
        .padding(30)
        //.background(.linearGradient(colors: <#T##[Color]#>, startPoint: <#T##UnitPoint#>, endPoint: <#T##UnitPoint#>)
    }
}

struct GameCard_Previews: PreviewProvider {
    static var previews: some View {
        GameCard(game: Game_List.demoGame[0])
    }
}
