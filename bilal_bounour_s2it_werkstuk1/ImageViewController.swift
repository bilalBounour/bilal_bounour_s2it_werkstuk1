//
//  ImageViewController.swift
//  bilal_bounour_s2it_werkstuk1
//
//  Created by bilal_bounour on 11/05/2018.
//  Copyright © 2018 bilal_bounour. All rights reserved.
//
import UIKit

class ImageViewController: UIViewController {
    
    var temp:UIImage?
    
    @IBOutlet var myImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myImage.image = temp
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

