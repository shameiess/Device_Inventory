//
//  DeviceDetailTableViewController.swift
//  Device_Inventory
//
//  Created by Kevin Nguyen on 3/15/16.
//  Copyright © 2016 Kevin Nguyen. All rights reserved.
//

import UIKit
import RealmSwift

class DeviceDetailTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var deviceDetailList: UITableView!
    var selectedDevice : DeviceList!
    var deviceDetails : Results<DeviceList>!
    //var deviceAvailable : Results<Device>!
    //var deviceUnavailable : Results<Device>!
    
    var isEditingMode = false
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        readTasksAndUpdateUI()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    func readTasksAndUpdateUI(){
        deviceDetails = uiRealm.objects(DeviceList)
        //deviceDetail = self.selectedList.devices.filter("available = true")
        //deviceDetail = self.selectedList.devices.filter("available = false")
        self.deviceDetailList.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! DevicesTableViewCell

        // Configure the cell...
        let selected = selectedDevice
        
        cell.deviceLabel.text = selected.device
        cell.modelLabel.text = selected.model
        cell.osLabel.text = selected.os
        cell.barcodeLabel.text = selected.barcode
        cell.carrierLabel.text = selected.carrier
        cell.numberLabel.text = selected.number
        cell.simLabel.text = selected.sim
        cell.colorLabel.text = selected.color
        if (selected.status == "Available") {
            cell.statusLabel.textColor = UIColor.greenColor()
            cell.statusLabel.text = selected.status
        }
        else {
            cell.statusLabel.textColor = UIColor.redColor()
            cell.statusLabel.text = selected.status
        }
        cell.statusLabel.text = selected.status
        //cell.availableLabel.text = selected.available
        
        return cell
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
