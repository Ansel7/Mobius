//
//  FPS_LayoutView.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 6/8/22.
//

import SwiftUI

struct FPSLayoutView: View {
    
    @ObservedObject var game: ARBattleRoyal
    
    var body: some View {
        HStack{
            VStack{
                Text("Hello")
            }
        }
    }
    
    struct WieldButton: View{
        var body: some View{
            ZStack{
                Button("🔥"){
                    //.Wield()
                }
            }
        }
    }
}

