//
//  Buttons.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 6/10/22.
//

import SwiftUI

struct StartButton: View{
    
    let buttonName: String
    let fontSize: CGFloat
    let buttonWidth: CGFloat
    let buttonHeight: CGFloat
    
    @State var tap = false
    @State var press = false
    
    var body: some View {
        
        Button(action: {}){
            
            Text(buttonName)
                .font(.system(size: fontSize, weight: .semibold, design: .rounded))
                .frame(width: buttonWidth, height: buttonHeight)
                .background(
                    
                    ZStack {
                        
                        Color(press ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) : #colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1))
                        
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .foregroundColor(Color(press ? #colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1) : #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .blur(radius: 4)
                            .offset(x: -8, y: -8)
                        
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9530821301, green: 0.9530821301, blue: 0.9530821301, alpha: 1)), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .padding(2)
                            .blur(radius: 2)
                        
                    })
            
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            
                .overlay(
                    HStack {
                        Image(systemName: "person.crop.circle")
                            .font(.system(size: 24, weight: .light))
                            .foregroundColor(Color.white.opacity(press ? 0 : 1))
                            .frame(width: press ? 64 : 54, height: press ? 4 : 50)
                            .background(Color(#colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 1)))
                            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                            .shadow(color: Color(#colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 1)).opacity(0.3), radius: 10, x: 10, y: 10)
                            .offset(x: press ? 70 : -10, y: press ? 16 : 0)
                        
                        Spacer()
                    }
                )
            
                .shadow(color: Color(press ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) : #colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1)), radius: 20, x: 20, y: 20)
            
                .shadow(color: Color(press ? #colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1) : #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
            
                .scaleEffect(tap ? 1.2 : 1)
            
                .gesture(LongPressGesture().onChanged{value in
                    self.tap = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
                        self.tap = false
                    }
                }
                    .onEnded{value in
                        self.press.toggle()
                    }
                )
        }
        .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0))
    }
}










struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        StartButton(buttonName: "Start", fontSize: 25, buttonWidth: 200, buttonHeight: 60)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(#colorLiteral(red: 0.9014388723, green: 0.9502404661, blue: 0.9663364551, alpha: 1)))
            .edgesIgnoringSafeArea(.all)
    }
}
