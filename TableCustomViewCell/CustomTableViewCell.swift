//
//  CustomTableViewCell.swift
//  TableCustomViewCell
//
//  Created by Neeraja Sarasan on 08/09/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var customLabel: UILabel!
    @IBOutlet weak var customImage: UIImageView!
    static let identifier = "CustomTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: "CustomTableViewCell", bundle: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // selectionStyle = .none
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
