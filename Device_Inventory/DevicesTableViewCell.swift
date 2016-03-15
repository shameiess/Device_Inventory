//
//  DevicesTableViewCell.swift
//  Device_Inventory
//
//  Created by Kevin Nguyen on 3/8/16.
//  Copyright © 2016 Kevin Nguyen. All rights reserved.
//

import UIKit

class DevicesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var versionLabel: UILabel!
    @IBOutlet weak var availableLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
