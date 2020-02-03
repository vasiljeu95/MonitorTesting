//
//  MonitorTestingTableViewController.swift
//  MonitorTesting
//
//  Created by Stepan Vasilyeu on 2/3/20.
//  Copyright © 2020 Stepan Vasilyeu. All rights reserved.
//

import UIKit

class MonitorTestingTableViewController: UITableViewController {

    var arrays = testingArray
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Monitor Testing App"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrays.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath)

        cell.textLabel?.text = arrays[indexPath.row]

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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let identifier = segue.identifier, let identifierCase = MonitorTestingTableViewController.MonitorTestingTableViewControllerSegue(rawValue: identifier) else {
            assertionFailure("Could not map segue identifier -- \(segue.identifier) -- to segue case")
            return
        }
        
        switch identifierCase {
        case .colorReproductionVC:
            segue.destination as! ColorReproductionViewController
//        case .gradientsVC:
//            <#code#>
//        case .flickerVC:
//            <#code#>
//        case .sharpnessVC:
//            <#code#>
        }
    }
}

extension MonitorTestingTableViewController {
    enum MonitorTestingTableViewControllerSegue: String {
        case colorReproductionVC
//        case gradientsVC
//        case flickerVC
//        case sharpnessVC
    }
}
