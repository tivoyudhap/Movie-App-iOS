//
//  CategoryMoviesTableViewCell.swift
//  Movie App
//
//  Created by Tivo Yudha on 24/04/22.
//

import UIKit

class CategoryMoviesTableViewCell: UITableViewCell {

    @IBOutlet weak var baseView: UIView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        baseView.layer.cornerRadius = 12
        baseView.layer.shadowColor = UIColor.gray.cgColor
        baseView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        baseView.layer.shadowRadius = 12.0
        baseView.layer.shadowOpacity = 0.7
    }

    func setUpData(entity: CategoryUIEntity) {
        categoryLabel.text = entity.name
    }
}
