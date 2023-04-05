//
//  ContentView.swift
//  Poops
//
//  Created by howard on 2021/12/12.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var homeViewModel: HomeViewModel
    
    var body: some View {
        ZStack {
            NaverMapViewControllerRepresentable(locations: $homeViewModel.locations)
                .ignoresSafeArea()
                .onAppear {
                    homeViewModel.addLocation(lat: 37.5670135, log: 126.9783740)
                }
            Button {
                homeViewModel.addLocation(lat: 37.9, log: 126.9783740)
            } label: {
                Text("add")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    @State static var homeViewModel = HomeViewModel()
    static var previews: some View {
        ContentView()
            .environmentObject(homeViewModel)
    }
}
