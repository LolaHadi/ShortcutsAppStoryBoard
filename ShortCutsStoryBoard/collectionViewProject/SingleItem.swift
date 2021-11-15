//
//  SingleItem.swift
//  collectionViewProject
//
//  Created by Lola M on 11/15/21.
//

import Foundation
import UIKit

class singleItem: Identifiable {
    
    var id = UUID().uuidString
    
    var leftIconImage: UIImage
    var tLabel: String
    var t2Label: String
    var bgColor: UIColor
    
    
    init(leftIconImage: UIImage, tLabel: String, t2Label: String, bgColor: UIColor) {
        
        self.leftIconImage = leftIconImage
        self.tLabel = tLabel
        self.t2Label = t2Label
        self.bgColor = bgColor
    }

}
