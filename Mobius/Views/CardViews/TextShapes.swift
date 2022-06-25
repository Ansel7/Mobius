//
//  QueuedGameViews.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 6/20/22.
//

import SwiftUI

struct TextRect: View, Identifiable {
    
    let stringData: String
    let columnData: Text
    let id = UUID()
    let fontSize: CGFloat = 18
    let columnHeight: CGFloat = 45
    
    private let utils = GameCenterUtils()
    
    var body: some View{
        columnData
            .foregroundColor(.black)
            .font(.system(size: fontSize, weight: .semibold, design: .rounded))
            .lineLimit(1)
            .minimumScaleFactor(0.75)
            .frame(width: CGFloat((stringData.count * 12)), height: columnHeight)
            .background(
                
                ZStack {
                    
                    Color(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1))
                    
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .blur(radius: 4)
                        .offset(x: -8, y: -8)
                    
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9530821301, green: 0.9530821301, blue: 0.9530821301, alpha: 0.7040029105)), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .padding(2)
                        .blur(radius: 2)
                    
                })
        
            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            .shadow(color: Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1)), radius: 20, x: 20, y: 20)
            .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
    
    }
}

struct TextRectRow: View{
    
    var game: ScheduledGame
    
    var body: some View{
        
        //this is where you design the rows
        HStack{
            TextRect(stringData: game.name, columnData: Text(game.name))
            TextRect(stringData: game.startTime, columnData: Text(game.startTime))
            TextRect(stringData: game.host, columnData: Text(game.host))
            
        }
        
    }
}
