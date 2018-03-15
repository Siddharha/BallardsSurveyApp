//
//  CustomTableViewCell.swift
//  BallardsSurveyApp
//
//  Created by Siddhartha Maji on 16/03/18.
//  Copyright © 2018 Parthib Biswas. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var descCell: UILabel!
    @IBOutlet weak var cellTitle: UILabel!
    @IBOutlet weak var cellView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func btnNextArrow(_ sender: Any) {
        print("Next Item")
    }
    @IBAction func btnClose(_ sender: Any) {
        print("closing!")
    }
}
