//
//  HuntTableViewCell.swift
//  Project 4
//
//  Created by Santos O. Martínez Braña on 3/20/23.
//

import UIKit

class HuntCell: UITableViewCell {

    @IBOutlet weak var completedImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!

    func configure(with hunt: Hunt) {
        titleLabel.text = hunt.title
        titleLabel.layer.opacity = hunt.isComplete ? 0.6 : 1
        completedImageView.image = UIImage(systemName: hunt.isComplete ? "checkmark.circle" : "circle")?.withRenderingMode(.alwaysTemplate)
        completedImageView.tintColor = hunt.isComplete ? UIColor(named: "AccentColor") : UIColor(named: "border")
    }

}
