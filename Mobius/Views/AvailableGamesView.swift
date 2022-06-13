//
//  AvailableGamesView.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 6/9/22.
//

import SwiftUI

struct AvailableGamesView: View {
    
    var body: some View {
        
        ScrollView {
            
            Spacer()
            
            VStack {
                
                QueuedGameRow(name: Text("Abraham's BR"), playersRegistered: 2, gameIsOpen: true)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }
        .background(Color(#colorLiteral(red: 0.9014388723, green: 0.9502404661, blue: 0.9663364551, alpha: 1)))
        
        .navigationBarTitle("Game's", displayMode: .inline)
        
    }
}

struct QueuedGameColumn: View, Identifiable {
    
    let columnData: Text
    let id: Int
    let fontSize: CGFloat
    let columnWidth: CGFloat
    let columnHeight: CGFloat = 45
    
    private let utils = GameCenterUtils()
    
    var body: some View{
        columnData
            .foregroundColor(.black)
            .onAppear{utils.authenticateUser()}
            .font(.system(size: fontSize, weight: .semibold, design: .rounded))
            .lineLimit(1)
            .minimumScaleFactor(0.75)
            .frame(width: columnWidth, height: columnHeight)
            .background(
                
                ZStack {
                    
                    Color(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1))
                    
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .blur(radius: 4)
                        .offset(x: -8, y: -8)
                    
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9530821301, green: 0.9530821301, blue: 0.9530821301, alpha: 1)), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .padding(2)
                        .blur(radius: 2)
                    
                })
        
            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
        
            .shadow(color: Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1)), radius: 20, x: 20, y: 20)
        
            .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
        
            .onDisappear{
                AppDelegate.orientationLock = .all
            }
    }
}

struct QueuedGameRow: View{
    
    let name: Text
    let playersRegistered: Int
    let startTime: Date = Date()
    let gameIsOpen: Bool
    
    var body: some View{
        //this is where you design the rows
        HStack{
            QueuedGameColumn(columnData: name, id: Int(startTime.timeIntervalSinceReferenceDate), fontSize: 20, columnWidth: 200)
            
            QueuedGameColumn(columnData: Text(String(playersRegistered) + "/ 20"), id: Int(startTime.timeIntervalSinceReferenceDate) + 1, fontSize: 20, columnWidth: 80)
        }
    }
    
    
}



struct AvailableGamesView_Previews: PreviewProvider {
    static var previews: some View {
        AvailableGamesView()
    }
}
