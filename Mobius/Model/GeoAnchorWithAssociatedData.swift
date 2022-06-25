//
//  GeoAnchorWithAssociatedData.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 6/23/22.
//

import ARKit
import MapKit

struct GeoAnchorWithAssociatedData{
    let anchor: ARGeoAnchor
    let mapOverlay: GameBoundsIndicator
}

// A map overlay for geo anchors the user has added.
class GameBoundsIndicator: MKCircle {
    convenience init(center: CLLocationCoordinate2D) {
        self.init(center: center, radius: 3.0)
    }
}
