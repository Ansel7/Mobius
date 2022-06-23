//
//  CreateGameView.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 6/11/22.
//

import SwiftUI
import RiveRuntime

struct CreateGameView: View {
    
    @State var gameName = ""
    @State var gameHost = ""
    @State var startTime = ""
    
    let button = RiveViewModel(fileName: "button")
    
    var body: some View {
        VStack(spacing:10) {
            
            Text("Create Game")
                .font(.largeTitle)
            
            VStack {
                Text("Game Name")
                    .font(.subheadline)
                .foregroundColor(.secondary)
                
                TextField("", text: $gameName)
                    .customTextField()
            }
            
            VStack {
                Text("Host Name")
                    .font(.subheadline)
                .foregroundColor(.secondary)
                
                TextField("", text: $gameHost)
                    .customTextField()
            }
            
            VStack {
                Text("start Time")
                    .font(.subheadline)
                .foregroundColor(.secondary)
                
                TextField("", text: $startTime)
                    .customTextField()
            }
            
            Divider()
            
            MapPicker()
            
            Divider()
            
            Label("Create", systemImage: "arrow.right")
                .padding(20)
                .frame(maxWidth: .infinity)
                .background(Color(hex: "F77D8E"))
                .foregroundColor(.white)
                .cornerRadius(20, corners: [.topRight, .bottomLeft, .bottomRight])
                .cornerRadius(8, corners: [.topLeft])
                .shadow(color: Color(hex:"F77D8E").opacity(0.5), radius: 20, x: 0, y: 10)
            
        }
        .padding(30)
        .background(.regularMaterial)
        .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color("shadow").opacity(0.3), radius: 5, x: 0, y: 3)
        .shadow(color: Color("shadwo").opacity(0.3), radius: 30, x: 0, y: 30)
        .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous)
            .stroke(.linearGradient(colors: [.white.opacity(0.8),.white.opacity(0.1)], startPoint: .topLeading, endPoint: .bottomTrailing)))
        .padding()
    }
}

struct CreateGameView_Previews: PreviewProvider {
    static var previews: some View {
        CreateGameView()
    }
}
