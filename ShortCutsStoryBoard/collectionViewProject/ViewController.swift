//
//  ViewController.swift
//  collectionViewProject
//
//  Created by Lola M on 11/15/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    lazy var items: [singleItem] = [
        
        singleItem(leftIconImage: UIImage(systemName: "person")!, tLabel: "Apple Frames", t2Label: "169 Actions", bgColor: .blue),
        singleItem(leftIconImage: UIImage(systemName: "heart.fill")!, tLabel: "I Love iOS", t2Label: "100 Actions", bgColor: .systemPink),
        singleItem(leftIconImage: UIImage(systemName: "square.and.arrow.up.fill")!, tLabel: "Shortcut Name", t2Label: "99 Actions", bgColor: .brown),
        singleItem(leftIconImage: UIImage(systemName: "star.fill")!, tLabel: "Shortcut Name", t2Label: "27 Actions", bgColor: .orange)
    ]
    
    
    
    @IBOutlet weak var myTableView: UICollectionView!
    

    @IBAction func selectBtn(_ sender: Any) {
        print("Select Btn Tapped :)")
    }
    
    @IBAction func backBtn(_ sender: Any) {
        print("Back Btn Tapped :)")

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.items.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath as IndexPath) as! MyCollectionViewCell
        
        cell.layer.cornerRadius = 20.0
        cell.leftIconImageView.tintColor = .white
        
        cell.leftIconImageView.image = items[indexPath.row].leftIconImage
        cell.Tlabel.text = items[indexPath.row].tLabel
        cell.T2Label.text = items[indexPath.row].t2Label
        cell.backgroundColor = items[indexPath.row].bgColor
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenWidth = view.layer.frame.width
        let screenHeight = view.layer.frame.height

        return CGSize(width: screenWidth / 2 - 15, height: screenHeight / 6 - 15)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        self.navigationItem.title = "All Shortcuts"
    }
}

