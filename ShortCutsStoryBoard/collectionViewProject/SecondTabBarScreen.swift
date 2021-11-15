//
//  SecondTabBarScreen.swift
//  collectionViewProject
//
//  Created by Lola M on 11/15/21.
//

import UIKit

class SecondTabBarScreen: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func backBtn(_ sender: Any) {
        print("Back Btn Tapped")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Automation"

    }


}
