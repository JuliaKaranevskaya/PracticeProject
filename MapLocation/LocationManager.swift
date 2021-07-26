//
//  LocationManager.swift
//  MapLocation
//
//  Created by Юлия Караневская on 20.07.21.
//

import Foundation
import CoreLocation
import MapKit

class LocationManager: NSObject, CLLocationManagerDelegate {
    
    static let shared = LocationManager()
    
    let manager = CLLocationManager()
    
    var completion: ((CLLocation) -> Void)?
    
    public func getUserLocation(completion: @escaping ((CLLocation) -> Void)) {
        self.completion = completion
        manager.requestWhenInUseAuthorization()
        manager.delegate = self
        manager.startUpdatingLocation()
    }
    
    public func resolveLocationName(with location: CLLocation, completion: @escaping ((String?) -> Void)) {
        
        let geocoder = CLGeocoder()
        geocoder.reverseGeocodeLocation(location, preferredLocale: .current) { placemark, error in
            guard let place = placemark?.first,
                  error == nil else {
                completion(nil)
                return
            }
            
            print("PLACE \(place)")
            if let adminArea = place.administrativeArea {
                print("ADMINISTRATIVE AREA \(adminArea)")
            }
            
            if let street = place.thoroughfare {
                print("STREET AREA \(street)")
            }
            
            
            
            
        }
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else {
            return
        }
        completion?(location)
        manager.stopUpdatingLocation()
    }
}
