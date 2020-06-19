//
//  SecondTableViewCell.swift
//  SampleTaskOneApp
//
//  Created by Rajendra Patel on 18/06/20.
//  Copyright © 2020 Papple Technologies Pvt Ltd. All rights reserved.
//

import UIKit

class SecondCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var customView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
}

class SecondTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var secondCollectionView: UICollectionView!

    var namesArray = ["Send Money", "Manish", "Steve", "Morgan", "Robert", "Steve", "Akshay"]

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return namesArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SecondCollectionViewCell", for: indexPath) as? SecondCollectionViewCell else { return UICollectionViewCell() }
        cell.customView.applyShadow()
        cell.customView.layer.cornerRadius = 5.0
        cell.nameLabel.text = namesArray[indexPath.row]
        cell.customView.backgroundColor = UIColor.white
        self.layoutIfNeeded()
        if indexPath.row == 0 {
            cell.customView.backgroundColor = UIColor.white
            cell.imageView.image = UIImage(named: "plus")?.withRenderingMode(.alwaysTemplate)
            cell.imageView.tintColor = UIColor.white
            cell.imageView.backgroundColor = UIColor(red: 47/255, green: 203/255, blue: 194/255, alpha: 1)
            cell.nameLabel.textColor = UIColor.init(displayP3Red: 47/255, green: 203/255, blue: 194/255, alpha: 1.0)
            cell.customView.applyDottedLineBorder()
        } else {
            cell.imageView.image = UIImage(named: "personImage")
            cell.customView.setGradientBackground(colorTop: UIColor(red: 47/255, green: 203/255, blue: 194/255, alpha: 1), colorBottom: UIColor(red: 12/255, green: 167/255, blue: 211/255, alpha: 1))
        }
        return cell
    }
}
