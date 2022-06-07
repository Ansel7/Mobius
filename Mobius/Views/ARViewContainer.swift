//
//  ARViewContainer.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 6/1/22.
//

import SwiftUI
import RealityKit

//
struct ARViewContainer: UIViewRepresentable {
    
    //
    func makeUIView(context: Context) -> ARView {
        
        //
        let arView = ARView(frame: .zero)
        
        //Experience.Box.scale(
        
        //
        let boxAnchor = try! Experience.loadBox()
        
        
        //
        arView.scene.anchors.append(boxAnchor)
        
        return arView
        
    }
    
    //
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}
