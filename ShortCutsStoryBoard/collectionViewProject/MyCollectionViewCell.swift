//
//  MyCollectionViewCell.swift
//  collectionViewProject
//
//  Created by Lola M on 11/15/21.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBAction func leftBtn(_ sender: Any) {
        printContent("left btn tapped")
    }
    
    @IBOutlet weak var leftIconImageView: UIImageView!
    @IBOutlet weak var Tlabel: UILabel!
    @IBOutlet weak var T2Label: UILabel!
    
}
