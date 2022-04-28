//
//  MoviePreviewCollectionViewCell.swift
//  Movie App
//
//  Created by Tivo Yudha on 28/04/22.
//

import UIKit

class MoviePreviewCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var previewImageView: UIImageView!
    
    private var entity: MovieUIEntity!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        previewImageView.layer.cornerRadius = 16
        previewImageView.contentMode = .scaleToFill
        previewImageView.layer.masksToBounds = true
    }

    func setUpData(entity: MovieUIEntity) {
        self.entity = entity
        previewImageView.loadFrom(imgUrl: "https://image.tmdb.org/t/p/original/\(entity.backdropPath)")
    }
}
