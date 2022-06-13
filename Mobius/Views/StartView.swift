//
//  StartView.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 6/11/22.
//

import SwiftUI

struct StartView: View {
    
    private let buttonName: String = "Start"
    private let fontSize: CGFloat = 30
    private let buttonWidth: CGFloat = 350
    private let buttonHeight: CGFloat = 80
    
    let game: ARBattleRoyal
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                Spacer()
                
                Text("Mobius")
                    .font(.system(size: 45, weight: .semibold, design: .rounded))
                    .foregroundColor(.black)
                
                Text("Battle Royal")
                    .font(.system(size: 25, weight: .semibold, design: .rounded))
                    .foregroundColor(.black)
                
                Spacer()
                
                Spacer()
                
                NavigationLink(destination: AvailableGamesView()){
                    
                    Text(buttonName)
//                        .renderingMode(.original)
                        .font(.system(size: fontSize, weight: .semibold, design: .rounded))
                        .frame(width: buttonWidth, height: buttonHeight)
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
                .ignoresSafeArea(.all)
                
                .environmentObject(game)
                
                Spacer()

            }
            
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            .background(Color(#colorLiteral(red: 0.9014388723, green: 0.9502404661, blue: 0.9663364551, alpha: 1)))
            
            .edgesIgnoringSafeArea(.all)
            
            .onAppear{
                UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
                
                AppDelegate.orientationLock = .portrait
            }
            
        }
        
    }
}



//struct StartView_Previews: PreviewProvider {
//    static var previews: some View {
//        StartView()
//    }
//}
