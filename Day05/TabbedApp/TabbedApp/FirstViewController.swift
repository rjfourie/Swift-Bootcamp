//
//  FirstViewController.swift
//  TabbedApp
//
//  Created by Russell Fourie on 2019/10/14.
//  Copyright © 2019 Russell Fourie. All rights reserved.
//

import UIKit
import MapKit

final class Annotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(coordinate: CLLocationCoordinate2D, title: String, subtitle: String?) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
        
        super.init()
    }
    var region: MKCoordinateRegion {
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        return MKCoordinateRegion(center: coordinate, span: span)
    }
}

class FirstViewController: UIViewController{
    
    @IBOutlet weak var mapView: MKMapView!
    
//    var coord: CLLocationCoordinate2D? = nil
    var coordA: Annotation? = nil
    var chicagoCoordA: Annotation? = nil
    var canadaCoordA: Annotation? = nil
    
//    var ecole42Coordinate = CLLocationCoordinate2D(latitude: 48.89639, longitude: 2.31845)
//    var ecole42Annotation = SchoolAnnotation(coordinate: ecole42Coordinate, title: "Ecole 42", subtitle: "42 is a private, nonprofit and tuition-free computer programming school created and funded by French billionaire Xavier Niel along with several partners.")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.showsUserLocation = true
        mapView.delegate = self
        
        mapView.register(MKMarkerAnnotationView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultClusterAnnotationViewReuseIdentifier)
        let ecole42Coordinate = CLLocationCoordinate2D(latitude: 48.89639, longitude: 2.31845)
        let ecole42Annotation = Annotation(coordinate: ecole42Coordinate, title: "Ecole 42", subtitle: "42 is a private, nonprofit and tuition-free computer programming school created and funded by French billionaire Xavier Niel along with several partners.")
        
        
        let chicagoCoordinate = CLLocationCoordinate2D(latitude: 41.8873178, longitude: -87.6375871)
        let chicagoAnnotation = Annotation(coordinate: chicagoCoordinate, title: "Chicago Riverwalk", subtitle: "Riverside pedestrian path featuring city views & dining, plus bridges, fishing piers & boat docks.")
        
        
        let canadaCoordinate = CLLocationCoordinate2D(latitude: 51.3215508, longitude: 51.3215508)
        let canadaAnnotation = Annotation(coordinate: canadaCoordinate, title: "Moraine Lake", subtitle: "Dramatic, glacier-fed lake with a distinctive blue-green color, plus hiking trails & a canoe dock.")
        
        
        
        
        if self.coordA == nil {
            mapView.addAnnotation(ecole42Annotation)
            mapView.setRegion(ecole42Annotation.region, animated: true)
        } else {
            mapView.addAnnotation(self.coordA!)
            mapView.setRegion(self.coordA!.region, animated: true)
        }
        
        
        
        if self.chicagoCoordA == nil {
            mapView.addAnnotation(chicagoAnnotation)
        } else {
            mapView.addAnnotation(self.chicagoCoordA!)
        }
        
        
        
        if self.canadaCoordA == nil {
            mapView.addAnnotation(canadaAnnotation)
        } else {
            mapView.addAnnotation(self.canadaCoordA!)
        }
    }
    
    @IBAction func mapTypeSegmentSelected(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .satellite
        case 2:
            mapView.mapType = .hybrid
        default:
            mapView.mapType = .standard
        }
    }
    
    @IBAction func locationZoom(_ sender: Any) {
        let userLocation = mapView.userLocation
        let region = MKCoordinateRegion.init(center: (userLocation.location?.coordinate)!,latitudinalMeters: 10000,longitudinalMeters: 10000)
        mapView.setRegion(region, animated: true)
    }    
}


extension FirstViewController: MKMapViewDelegate {
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if let schoolAnnotationView = mapView.dequeueReusableAnnotationView(withIdentifier: MKMapViewDefaultClusterAnnotationViewReuseIdentifier) as? MKMarkerAnnotationView {
            schoolAnnotationView
                .animatesWhenAdded = true
            schoolAnnotationView
                .titleVisibility = .adaptive
            schoolAnnotationView
                .titleVisibility = .adaptive
            
            return schoolAnnotationView
        }
        return nil
    }
}


//extension FirstViewController: CLLocationManagerDelegate {
//
//
//}
