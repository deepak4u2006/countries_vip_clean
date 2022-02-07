//
//  CountryTableViewCell.swift
//  RebtelAssignment
//
//  Created by Vishwa Deepak Choudhary on 2022-02-07.
//

import UIKit

class CountryTableViewCell: UITableViewCell {

    @IBOutlet weak var countryView: UIView!
    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var countryLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
        countryView.layer.cornerRadius = countryView.frame.height/2
        flagImageView.layer.cornerRadius = flagImageView.frame.height/2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
