//
//  DetailMovieViewController.swift
//  Movie App
//
//  Created by Tivo Yudha on 28/04/22.
//

import UIKit

class DetailMovieViewController: UIViewController {
    
    @IBOutlet weak var previewImageView: UIImageView!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var thumbUpImageView: UIImageView!
    @IBOutlet weak var thumbDownImageView: UIImageView!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    
    var entity: MovieUIEntity!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = entity.title
        
        previewImageView.loadFrom(imgUrl: "https://image.tmdb.org/t/p/original/\(entity.backdropPath)")
        starLabel.text = "\(entity.rate)"
        overviewLabel.text = entity.overview
        releaseDateLabel.text = entity.releaseDate
        
    }
}
