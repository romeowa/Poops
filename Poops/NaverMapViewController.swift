//
//  NaverMapViewController.swift
//  Poops
//
//  Created by howard on 2021/12/13.
//

import Foundation
import NMapsMap

class NaverMapViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(NMFMapView(frame: self.view.frame))
    }
}
