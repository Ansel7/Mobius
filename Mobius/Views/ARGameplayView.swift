//
//  ARGameplayView.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 6/1/22.
//

import SwiftUI
import RealityKit
import GameKit

struct ARGameplayView: View{
    
    var body: some View {
        
        NavigationView{
            NavigationLink(destination: ARViewContainer().edgesIgnoringSafeArea(.all)) {
                Text("Play Game")
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ARGameplayView_Previews: PreviewProvider {
    static var previews: some View {
        ARGameplayView()
    }
}
