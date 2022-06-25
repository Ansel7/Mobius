//
//  MiniMap.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 6/20/22.
////
//
import MapKit
import SwiftUI


struct MiniMap: View {

    @State private var mapRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 34.0522, longitude: -118.2437), span: MKCoordinateSpan(
                latitudeDelta: 0.025, longitudeDelta: 0.025
            ))
    
   
    var body: some View {
        Map(coordinateRegion: $mapRegion)
    }
}

struct MiniMap_Previews: PreviewProvider {
    static var previews: some View {
        MiniMap()
    }
}
