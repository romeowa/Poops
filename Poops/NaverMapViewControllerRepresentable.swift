//
//  NaverMapViewControllerRepresentable.swift
//  Poops
//
//  Created by howard on 2021/12/13.
//

import Foundation
import SwiftUI

struct NaverMapViewControllerRepresentable: UIViewControllerRepresentable {
    @Binding var locations: [Location]
    
    func makeUIViewController(context: Context) -> NaverMapViewController {
        return NaverMapViewController()
    }
    
    func updateUIViewController(_ uiViewController: NaverMapViewController, context: Context) {
        locations.forEach { location in
            uiViewController.addMarker(withLat: location.latitude, lng: location.longitude)
        }
    }
    typealias UIViewControllerType = NaverMapViewController
}
