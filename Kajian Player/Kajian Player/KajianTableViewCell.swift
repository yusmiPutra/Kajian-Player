//
//  KajianTableViewCell.swift
//  Kajian Player
//
//  Created by Nando Septian Husni on 9/22/17.
//  Copyright © 2017 IMA STUDIO. All rights reserved.
//

import UIKit

class KajianTableViewCell: UITableViewCell {
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var artist: UILabel!
    @IBOutlet weak var title: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
