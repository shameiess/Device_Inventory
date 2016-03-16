//
//  DevicesTableViewCell.swift
//  Device_Inventory
//
//  Created by Kevin Nguyen on 3/8/16.
//  Copyright © 2016 Kevin Nguyen. All rights reserved.
//

import UIKit

class DevicesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var deviceLabel: UILabel!
    @IBOutlet weak var osLabel: UILabel!
    @IBOutlet weak var barcodeLabel: UILabel!
    @IBOutlet weak var carrierLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var simLabel: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var availableLabel: UILabel!
    @IBOutlet weak var modelLabel: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
