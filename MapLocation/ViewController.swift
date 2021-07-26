//
//  ViewController.swift
//  MapLocation
//
//  Created by Юлия Караневская on 20.07.21.
//

import UIKit
import MapKit
import CoreLocation


class ViewController: UIViewController {
    
    private let map: MKMapView = {
        let m = MKMapView()
        return m
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(map)
        
       
        
        LocationManager.shared.getUserLocation { [weak self] location in
            DispatchQueue.main.async {
                guard let strongSelf = self else {
                    return
                }
                
                strongSelf.addMapPin(with: location)
            }
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        map.frame = view.bounds
    }
    
    func addMapPin(with location: CLLocation) {
        let pin = MKPointAnnotation()
        pin.coordinate = location.coordinate
        map.setRegion(MKCoordinateRegion(center: location.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)), animated: true)
        map.addAnnotation(pin)
    }


}

