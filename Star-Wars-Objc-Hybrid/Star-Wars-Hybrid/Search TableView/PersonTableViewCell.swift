//
//  PersonTableViewCell.swift
//  Star-Wars-Hybrid
//
//  Created by Paul Solt on 3/23/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

import UIKit

@objc(LSIPersonTableViewCell)
class PersonTableViewCell: UITableViewCell {
    @objc var person: Person? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var eyeColorLabel: UILabel!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func updateViews() {
        guard let person = person else { return }
        
        nameLabel.text = person.name.capitalized
        heightLabel.text = "\(person.height) meters"
        birthYearLabel.text = person.birthYear
        eyeColorLabel.text = "\(person.eyeColor) eyes"
    }
}
