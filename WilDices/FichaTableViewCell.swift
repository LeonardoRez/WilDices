//
//  FichaTableViewCell.swift
//  WilDices
//
//  Created by Student on 1/17/17.
//  Copyright © 2017 EaiMateus. All rights reserved.
//

import UIKit

class FichaTableViewCell: UITableViewCell {

    @IBOutlet weak var nomeJogadorLabel: UILabel!
    @IBOutlet weak var nomePersonagemLabel: UILabel!
    @IBOutlet weak var imagemPersonagem: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
