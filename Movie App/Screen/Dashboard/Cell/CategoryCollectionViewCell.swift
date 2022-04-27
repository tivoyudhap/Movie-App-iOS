//
//  CategoryCollectionViewCell.swift
//  Movie App
//
//  Created by Tivo Yudha on 27/04/22.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var baseBackground: UIView!
    @IBOutlet weak var categoryName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        baseBackground.layer.cornerRadius = 12
        baseBackground.layer.shadowColor = UIColor.gray.cgColor
        baseBackground.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        baseBackground.layer.shadowRadius = 12.0
        baseBackground.layer.shadowOpacity = 0.7
    }
    
    func setUpData(entity: CategoryUIEntity) {
        categoryName.text = entity.name
    }

}
