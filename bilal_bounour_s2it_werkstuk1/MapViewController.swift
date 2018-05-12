//
//  MapViewController.swift
//  bilal_bounour_s2it_werkstuk1
//
//  Created by bilal_bounour on 12/05/2018.
//  Copyright © 2018 bilal_bounour. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate  {
    
    var personen = [PersoonClass]()
    var locationManager = CLLocationManager()
    
    @IBOutlet var MapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let Persoon1 = PersoonClass(naam: "Bounour", voornaam: "Bilal", afbeelding: "bilal", telNr: "0484848484", adres: "Gustave belier 15", coordinaatX: 50.850346 , coordinaatY:4.351721)
        personen.append(Persoon1)
        
        let Persoon2 = PersoonClass(naam: "Sonmez", voornaam: "Ali", afbeelding: "ali", telNr: "0484838383", adres: "Montenegro 15", coordinaatX: 51.054342 , coordinaatY:3.717424 )
        personen.append(Persoon2)
        
        let Persoon3 = PersoonClass(naam: "Zaim", voornaam: "Camil", afbeelding: "rayan", telNr: "0484828282", adres: "Kastanjestraat 15", coordinaatX: 50.632557 , coordinaatY:5.579666)
        personen.append(Persoon3)
        
        let Persoon4 = PersoonClass(naam: "Bounour", voornaam: "Amine", afbeelding: "amine", telNr: "0476544323", adres: "Aarschotstraat 15", coordinaatX: 51.025876 , coordinaatY:4.477536)
        personen.append(Persoon4)
        
        let Persoon5 = PersoonClass(naam: "Elhamouti", voornaam: "Majid", afbeelding: "majid", telNr: "0465234567", adres: "Gustave defnet 15", coordinaatX: 50.879844 , coordinaatY:4.700518)
        personen.append(Persoon5)
        
        writeAnnotation()
        
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func writeAnnotation(){
        for persoon in personen {
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2D(latitude: persoon.coordinaatX, longitude: persoon.coordinaatY)
            annotation.title = persoon.adres.capitalized
            
            self.MapView.addAnnotation(annotation)
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        
        mapView.setRegion(region, animated: true)
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
