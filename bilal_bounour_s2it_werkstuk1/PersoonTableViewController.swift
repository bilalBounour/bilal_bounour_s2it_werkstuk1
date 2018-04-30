//
//  PersoonTableViewController.swift
//  bilal_bounour_s2it_werkstuk1
//
//  Created by ontlener on 30/04/2018.
//  Copyright © 2018 bilal_bounour. All rights reserved.
//

import UIKit

class PersoonTableViewController: UITableViewController {
    
    var PersoonInfo = [PersoonClass]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let Persoon1 = PersoonClass(naam: "Bounour", voornaam: "Bilal", afbeelding: "aap", telNr: "0484848484", adres: "Gustave belier 15", coordinaatX: 50.850346 , coordinaatY:4.351721)
        PersoonInfo.append(Persoon1)
        
        let Persoon2 = PersoonClass(naam: "Sonmez", voornaam: "Ali", afbeelding: "ali", telNr: "0484838383", adres: "montenegro 15", coordinaatX: 50.850346 , coordinaatY:4.351721 )
        PersoonInfo.append(Persoon2)
        
        let Persoon3 = PersoonClass(naam: "Zaim", voornaam: "Camil", afbeelding: "rayan", telNr: "0484828282", adres: "Kastanjestraat 15", coordinaatX: 50.850346 , coordinaatY:4.351721)
        PersoonInfo.append(Persoon3)
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PersoonInfo.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celtable", for: indexPath)

        cell.textLabel?.text = PersoonInfo[indexPath.row].naam
        cell.detailTextLabel?.text = PersoonInfo[indexPath.row].voornaam
        cell.imageView?.image = UIImage(named:PersoonInfo[indexPath.row].afbeelding)
        

        return cell
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "naarDetail"{
            let viewcontroller = segue.destination as! PersoonDetailViewController
            let indexPath = self.tableView.indexPathForSelectedRow
            
            viewcontroller.persoonDetail = PersoonInfo[(indexPath?.row)!]
        }
    }
    

}
