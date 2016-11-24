//
//  PostTableViewCell.swift
//  Swiftagram
//
//  Created by Parth Saxena on 11/23/16.
//  Copyright © 2016 Socify. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var contentTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.titleLabel.alpha = 0
        self.postImageView.alpha = 0
        self.contentTextView.alpha = 0
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
