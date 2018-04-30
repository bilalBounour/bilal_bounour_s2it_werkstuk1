//
//  PersoonDetailViewController.swift
//  bilal_bounour_s2it_werkstuk1
//
//  Created by ontlener on 30/04/2018.
//  Copyright © 2018 bilal_bounour. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class PersoonDetailViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    var persoonDetail = PersoonClass()

    @IBOutlet weak var lblNaam: UILabel!
    @IBOutlet weak var lblVoornaam: UILabel!
    @IBOutlet weak var lblTelNr: UILabel!
    @IBOutlet weak var lblAdres: UILabel!
    @IBOutlet weak var Afbeelding: UIImageView!
    @IBOutlet var map: MKMapView!
    
    let locatie = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.lblNaam.text = persoonDetail.naam
        self.lblVoornaam.text = persoonDetail.voornaam
        self.lblTelNr.text = persoonDetail.telNr
        self.Afbeelding.image = UIImage(named: persoonDetail.afbeelding)
        
        let locatiePersoon = MKPointAnnotation()
        locatiePersoon.coordinate = CLLocationCoordinate2D(latitude: persoonDetail.coordinaatX, longitude: persoonDetail.coordinaatY)
        
        
        self.map.addAnnotation(locatiePersoon)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
