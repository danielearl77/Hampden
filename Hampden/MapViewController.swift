//
//  MapViewController.swift
//  Hampden
//
//  Created by Daniel Earl on 09/10/2021.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController {

    @IBOutlet weak var StadLocMap: MKMapView!
    
    let locMan:CLLocationManager=CLLocationManager()
    
    func setMapToGround() {
        let lat = 55.8252342
        let lon = -4.2531995
        let centerRegion: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: lat, longitude: lon)
        let spanRegion: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let mapRegion: MKCoordinateRegion = MKCoordinateRegion(center: centerRegion, span: spanRegion)
        StadLocMap.setRegion(mapRegion, animated: true)
    }
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        setMapToGround()
        super.viewDidLoad()
        self.locMan.requestWhenInUseAuthorization()
    }
    
    // MARK: - Navigation
    @IBAction func backBtn(_ sender: Any) {
        performSegue(withIdentifier: "backToHome", sender: self)
    }
    
}
