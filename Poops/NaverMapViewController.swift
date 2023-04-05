//
//  NaverMapViewController.swift
//  Poops
//
//  Created by howard on 2021/12/13.
//

import Foundation
import NMapsMap

class NaverMapViewController : UIViewController {
    var mapView: NMFMapView?
    func addMarker(withLat lat: Double, lng: Double) {
        let marker = NMFMarker(position: NMGLatLng(lat: lat, lng: lng))
        marker.mapView = mapView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView = NMFMapView(frame: self.view.frame)
        view.addSubview(mapView!)
    }
}
