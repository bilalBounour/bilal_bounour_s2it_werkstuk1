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
        
        let Persoon1 = PersoonClass(naam: "Bounour", voornaam: "Bilal", afbeelding: "aap", telNr: "0484848484", adres: "Gustave belier 15")
        PersoonInfo.append(Persoon1)
        
        let Persoon2 = PersoonClass(naam: "Sonmez", voornaam: "Ali", afbeelding: "ali", telNr: "0484838383", adres: "montenegro 15")
        PersoonInfo.append(Persoon1)
        
        let Persoon1 = PersoonClass(naam: "Zaim", voornaam: "Camil", afbeelding: "aap", telNr: "0484828282", adres: "Kastanjestraat 15")
        PersoonInfo.append(Persoon1)
        
        

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
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
