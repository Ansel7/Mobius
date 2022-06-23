//
//  MiniMap.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 6/20/22.
////
//
//import MapKit
//import SwiftUI
//
//
//struct MiniMap: View {
//
//    @State private var mapRegion = MKCoordinateRegion(
//        center: CLLocationCoordinate2D(
//            latitude: 51.5, longitude: -0.12), span: MKCoordinateSpan(
//                latitudeDelta: 0.2, longitudeDelta: 0.2
//            ))
//    
//   
//    var body: some View {
//        Map(coordinateRegion: $mapRegion, annotationItems: locations){ location in
//            MapAnnotation(coordinate: location.coordinate){
//                Circle()
//                    .stroke(.red, lineWidth: 3)
//                    .frame(width: 300, height: 300)
//            }
//        }.frame(width: 400, height: 400)
//    }
//}
//
//struct MiniMap_Previews: PreviewProvider {
//    static var previews: some View {
//        MiniMap()
//    }
//}
