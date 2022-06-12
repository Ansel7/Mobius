//
//  AvailableGamesView.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 6/9/22.
//

import SwiftUI

struct AvailableGamesView: View {
    
    var body: some View {
        
        VStack{
            
            Text("List")
                .font(.system(size: 25, weight: .semibold, design: .rounded))
                .foregroundColor(.black)
                .navigationTitle("Game")
                .navigationBarTitleDisplayMode(.inline)
            
            Spacer()
            
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        .background(Color(#colorLiteral(red: 0.9014388723, green: 0.9502404661, blue: 0.9663364551, alpha: 1)))
        
    }
}

struct MatchColumn: View {
    
    let columnData: String
    let fontSize: CGFloat
    let columnWidth: CGFloat
    let columnHeight: CGFloat
    
    var body: some View{
        Text(columnData)
            .font(.system(size: fontSize, weight: .semibold, design: .rounded))
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
    }
    
}

struct MatchRow: View{
    
    private let numColumns: Int
    
    var body: some View{
        Text("Hello")
    }
}



struct AvailableGamesView_Previews: PreviewProvider {
    static var previews: some View {
        AvailableGamesView()
    }
}
