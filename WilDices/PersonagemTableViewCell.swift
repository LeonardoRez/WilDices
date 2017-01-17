//
//  PersonagemTableViewCell.swift
//  WilDices
//
//  Created by Student on 1/17/17.
//  Copyright © 2017 EaiMateus. All rights reserved.
//

import UIKit

class PersonagemTableViewCell: UITableViewCell {

    @IBOutlet weak var quantVidaLabel: UILabel!
    @IBOutlet weak var quantVidaStepper: UIStepper!
    @IBOutlet weak var nomePersonagemLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
