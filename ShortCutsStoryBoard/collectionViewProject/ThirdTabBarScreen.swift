//
//  ThirdTabBarScreen.swift
//  collectionViewProject
//
//  Created by Lola M on 11/15/21.
//

import UIKit

class ThirdTabBarScreen: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBAction func printBackBtnTappedbackBtn(_ sender: Any) {
        print("Back Btn Tapped")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Gallery"

        
    }

}
