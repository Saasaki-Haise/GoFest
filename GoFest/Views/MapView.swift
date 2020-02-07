//
//  MapView.swift
//  GoFest
//
//  Created by Haise on 28/01/2020.
//  Copyright © 2020 Haise. All rights reserved.
//

import SwiftUI

import MapKit

struct MapView: UIViewRepresentable{
    
    var festivals = [Festival]()
    
    
    func makeUIView(context: Context) -> MKMapView {
    MKMapView(frame: .zero)
        
    }
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 49.2, longitude: 0.3167)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
        
        
       
       view.addAnnotations(festivals)
            
        
    }
}


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(festivals: [])
    }
}
