//
//  PersoonClass.swift
//  bilal_bounour_s2it_werkstuk1
//
//  Created by ontlener on 30/04/2018.
//  Copyright © 2018 bilal_bounour. All rights reserved.
//

import Foundation

class PersoonClass {
    var naam : String
    var voornaam : String
    var afbeelding : String
    var telNr : String
    var adres : String
    var coordinaatX : Double
    var coordinaatY : Double
    
    init() {
        naam = ""
        voornaam = ""
        afbeelding = ""
        telNr = ""
        adres = ""
        coordinaatX = 0
        coordinaatY = 0
    }
    
    init(naam:String, voornaam:String, afbeelding:String, telNr:String, adres:String, coordinaatX:Double, coordinaatY:Double){
        self.naam = naam
        self.voornaam = voornaam
        self.afbeelding = afbeelding
        self.telNr = telNr
        self.adres = adres
        self.coordinaatX = coordinaatX
        self.coordinaatY = coordinaatY
    }
}
