//
//  MusisiCellTableViewTableViewCell.swift
//  My Favorite Musician
//
//  Created by Fikri on 20/05/20.
//  Copyright © 2020 Fikri Helmi. All rights reserved.
//

import UIKit

class MusisiCellTableViewTableViewCell: UITableViewCell {

    @IBOutlet weak var fotoMusisi: UIImageView!
    @IBOutlet weak var namaMusisi: UILabel!
    @IBOutlet weak var deskripsiMusisi: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
