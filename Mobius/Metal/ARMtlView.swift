//
//  ARMtlView.swift
//  ARMetalView
//
//  Created by Abraham Bojorquez on 6/21/22.
//
import ARKit
import Metal
import MetalKit
import SwiftUI
//import RealityKit

extension MTKView : RenderDestinationProvider {
}

struct ARMtlView: UIViewRepresentable{
    
    let mtkView = MTKView()
    
    let session = ARSession()

    func makeCoordinator() -> Renderer {
        
        mtkView.device = MTLCreateSystemDefaultDevice()
        
        mtkView.backgroundColor = UIColor.clear
        
        //mtkView.preferredFramesPerSecond = 30
        
        let renderer = Renderer(self,sesh: session, device: mtkView.device!, renderDestination: mtkView)
        
        mtkView.delegate = renderer
        
        renderer.drawRectResized(size: mtkView.bounds.size)
        
        let configuration = ARGeoTrackingConfiguration()

        // Run the view's session
        session.run(configuration)
        
        return renderer
        
    }
    
    func placeAnchor(){
        // Create anchor using the camera's current position
        if let currentFrame = session.currentFrame {
            
            // Create a transform with a translation of 0.2 meters in front of the camera
            var translation = matrix_identity_float4x4
            translation.columns.3.z = -1
            let transform = simd_mul(currentFrame.camera.transform, translation)
            
            // Add a new anchor to the session
            let anchor = ARAnchor(transform: transform)
            session.add(anchor: anchor)
        }
    }
    
    
    func makeUIView(context: Context) -> some UIView {
        
        return mtkView
        
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {}
    
    func appears(){
        let configuration = ARGeoTrackingConfiguration()

        // Run the view's session
        session.run(configuration)
    }
    
    func disappears(){
        session.pause()
    }
    
    
}
