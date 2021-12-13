//
//  NaverMapViewControllerRepresentable.swift
//  Poops
//
//  Created by howard on 2021/12/13.
//

import Foundation
import SwiftUI

struct NaverMapViewControllerRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> NaverMapViewController {
        return NaverMapViewController()
    }
    
    func updateUIViewController(_ uiViewController: NaverMapViewController, context: Context) {
        
    }
    
    
    typealias UIViewControllerType = NaverMapViewController
}
