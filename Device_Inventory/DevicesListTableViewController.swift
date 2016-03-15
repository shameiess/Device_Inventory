//
//  DevicesListTableViewController.swift
//  Device_Inventory
//
//  Created by Kevin Nguyen on 3/8/16.
//  Copyright © 2016 Kevin Nguyen. All rights reserved.
//

import UIKit
import RealmSwift

class DevicesListTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var devicesListTableView: UITableView!
    
    var lists : Results<DeviceList>!
    
    var isEditingMode = false
    
    @IBAction func didClickOnEditButton(sender: UIBarButtonItem) {
        isEditingMode = !isEditingMode
        self.devicesListTableView.setEditing(isEditingMode, animated: true)
    }
    
    
    override func viewWillAppear(animated: Bool) {
        readTasksAndUpdateUI()
    }
    func readTasksAndUpdateUI() {
        lists = uiRealm.objects(DeviceList)
        self.devicesListTableView.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.devicesListTableView.editing = true
        //self.navigationItem.rightBarButtonItem = self.editButtonItem()
        /*
        let device1 = DeviceList()
        device1.device = "iPhone 6s"
        device1.os = "iOS 9.2"
        device1.barcode = "1111111"
        device1.status = "Available"
        
        try! uiRealm.write {
            uiRealm.add(device1)
        }
        */
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - UITableViewDataSource
    /*
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
    */
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if let devicesList = lists{
            return devicesList.count
        }
        return 0
    }


    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //let cell = tableView.dequeueReusableCellWithIdentifier("listCell")
        let cell = tableView.dequeueReusableCellWithIdentifier("listCell", forIndexPath: indexPath) as? DevicesTableViewCell

        // Configure the cell...
        let list = lists[indexPath.row]
        
        cell?.textLabel?.text = list.device
        //cell!.availableLabel.text = list.status
        cell?.detailTextLabel?.text = list.os
        return cell!
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
