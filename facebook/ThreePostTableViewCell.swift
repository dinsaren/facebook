//
//  ThreePostTableViewCell.swift
//  facebook
//
//  Created by Dinsaren on 12/4/18.
//  Copyright © 2018 Dinsaren. All rights reserved.
//

import UIKit

class ThreePostTableViewCell: UITableViewCell {

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var imagePost: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
