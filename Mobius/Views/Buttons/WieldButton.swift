//
//  SwiftUIView.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 6/11/22.
//

import SwiftUI

struct WieldButton: View {
    var body: some View {
        VStack {
            Image(systemName: "sun.max")
                .font(.system(size: 44, weight: .light))
        }
        .frame(width: 100, height: 100)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.9014388723, green: 0.9502404661, blue: 0.9663364551, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
        )
        .clipShape(Circle())
        .shadow(color: .white, radius: 20, x: -20, y: -20)
        .shadow(color: Color(#colorLiteral(red: 0.8167583016, green: 0.9331383728, blue: 0.9462944313, alpha: 1)), radius: 20, x: 20, y: 20)
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        WieldButton()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(#colorLiteral(red: 0.9014388723, green: 0.9502404661, blue: 0.9663364551, alpha: 1)))
            .edgesIgnoringSafeArea(.all)
    }

}
