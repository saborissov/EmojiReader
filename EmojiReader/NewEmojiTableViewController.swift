//
//  NewEmojiTableViewController.swift
//  EmojiReader
//
//  Created by 17586317 on 21.08.2020.
//  Copyright © 2020 Борисов Сергей Александрович. All rights reserved.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {
    
    var emoji  = Emoji(emoji: "", name: "", desc: "", isFavorite: false)
    
    @IBOutlet weak var emojiTextField: UITextField!
    @IBOutlet weak var emojiNameTF: UITextField!
    @IBOutlet weak var descriptionTF: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        print("обновил")
        updateSaveButtonState()
        
        
    }
    
    private func updateSaveButtonState() {
        let emojiText = emojiTextField.text ?? ""
        let emojiName = emojiNameTF.text ?? ""
        let emojiDesc = descriptionTF.text ?? ""
        
        
        //кнопка сохранить доступна, при условии, что emojiText не равно пустому значению и т.д.
        
        saveButton.isEnabled = !emojiText.isEmpty && !emojiName.isEmpty && !emojiDesc.isEmpty
    }
    
    
    private func updateUI () {
        emojiTextField.text = emoji.emoji
        emojiNameTF.text = emoji.name
        descriptionTF.text = emoji.desc
        
        
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        updateSaveButtonState()
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super .prepare(for: segue, sender: sender)
        guard segue.identifier == "saveSegue" else {
            return
        }
        let emoji = emojiTextField.text ?? ""
        let name  = emojiNameTF.text ?? ""
        let desc = descriptionTF.text ?? ""
        
        self.emoji = Emoji(emoji: emoji, name: name, desc: desc, isFavorite: self.emoji.isFavorite)
    }
    
    
    
}
