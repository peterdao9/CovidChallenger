//
//  HomeTableViewCell.swift
//  CovidCHAL
//
//  Created by Dang Dao on 21/5/20.
//  Copyright © 2020 PeterDao. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var countryView: UIImageView!
    @IBOutlet weak var stateName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
