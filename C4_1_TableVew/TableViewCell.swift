//
//  TableViewCell.swift
//  C4_1_TableVew
//
//  Created by mac12 on 2022/3/9.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var thumbernail: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
