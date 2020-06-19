//
//  ThirdTableViewCell.swift
//  SampleTaskOneApp
//
//  Created by Rajendra Patel on 19/06/20.
//  Copyright © 2020 Papple Technologies Pvt Ltd. All rights reserved.
//

import UIKit

class InsideTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!

}

class ThirdTableViewCell: UITableViewCell, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var insideTable: UITableView!

    var titlesArray = ["Zeck Maroin", "Markoni Jikta", "Nimasha Mark", "Steve Jobs", "Chris Lattner", "Akshay Kumar"]
    var subtitlesArray = ["To Paypal", "To Usa Bank", "To Payoneer", "To Paypal", "To World Bank", "To Paypal"]

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titlesArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "InsideTableViewCell", for: indexPath) as? InsideTableViewCell else { return UITableViewCell() }
        cell.titleLabel.text = titlesArray[indexPath.row]
        cell.subtitleLabel.text = subtitlesArray[indexPath.row]
        return cell
    }

}
