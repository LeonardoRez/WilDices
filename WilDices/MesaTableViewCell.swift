//
//  MesaTableViewCell.swift
//  WilDices
//
//  Created by Student on 1/17/17.
//  Copyright © 2017 EaiMateus. All rights reserved.
//

import UIKit

class MesaTableViewCell: UITableViewCell {

    @IBOutlet weak var imagemMesa: UIImageView!
    @IBOutlet weak var nomeMesaLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
