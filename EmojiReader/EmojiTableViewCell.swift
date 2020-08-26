//
//  EmojiTableViewCell.swift
//  EmojiReader
//
//  Created by 17586317 on 15.08.2020.
//  Copyright © 2020 Борисов Сергей Александрович. All rights reserved.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {
    @IBOutlet weak var emoji: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    func emojiModel(object:Emoji) {
        self.emoji.text = object.emoji
        self.nameLabel.text = object.name
        self.descriptionLabel.text = object.desc
    }
    

    
    
}
