//
//  MoviesTableViewCell.swift
//  Movie App
//
//  Created by Tivo Yudha on 27/04/22.
//

import UIKit

protocol MoviesTableViewCellDelegate {
    func onOpenDetailClicked(entity: MovieUIEntity)
}

class MoviesTableViewCell: UITableViewCell {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    var delegate: MoviesTableViewCellDelegate? = nil
    private var entity: MovieUIEntity!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        movieImageView.layer.cornerRadius = 16
        movieImageView.contentMode = .scaleToFill
        movieImageView.layer.masksToBounds = true
    }
    
    func setUpData(entity: MovieUIEntity) {
        self.entity = entity
        movieImageView.loadFrom(imgUrl: "https://image.tmdb.org/t/p/original/\(entity.backdropPath)")
        titleLabel.text = entity.title
        categoryLabel.text = entity.category
        overviewLabel.text = entity.overview
    }
    
    @IBAction func onOpenDetailClicked(_ sender: Any) {
        delegate?.onOpenDetailClicked(entity: entity)
    }
}
