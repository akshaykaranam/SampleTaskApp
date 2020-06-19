//
//  FirsTableViewCell.swift
//  SampleTaskOneApp
//
//  Created by Rajendra Patel on 18/06/20.
//  Copyright © 2020 Papple Technologies Pvt Ltd. All rights reserved.
//

import UIKit

class FirstCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var customView: UIView!
}

class FirstTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var firstCollectionView: UICollectionView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FirstCollectionViewCell", for: indexPath) as? FirstCollectionViewCell else { return UICollectionViewCell() }
        cell.customView.layer.cornerRadius = 5.0
        cell.customView.applyShadow()
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemsPerRow: CGFloat = 1
        let hardCodedPadding: CGFloat = 2
        let itemWidth = (firstCollectionView.bounds.width / itemsPerRow) - hardCodedPadding
        let itemHeight = firstCollectionView.bounds.height - (2 * hardCodedPadding)
        return CGSize(width: itemWidth, height: itemHeight)
    }

}
