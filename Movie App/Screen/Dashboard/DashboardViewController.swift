//
//  DashboardViewController.swift
//  Movie App
//
//  Created by Tivo Yudha on 22/04/22.
//

import UIKit

class DashboardViewController: UIViewController {

    @IBOutlet weak var trendingCollectionView: UICollectionView!
    @IBOutlet weak var previewImage: UIImageView!
    @IBOutlet weak var previewName: UILabel!
    
    private var viewModel: DashboardViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = DashboardViewModel.init(viewModelProtocol: self)
        previewImage.contentMode = .scaleToFill
        setUpTrendingCollectionView()
        
        viewModel.getTrendingMovie()
    }
    
    private func setUpTrendingCollectionView() {
        trendingCollectionView.delegate = self
        trendingCollectionView.dataSource = self
        
        trendingCollectionView.register(UINib(nibName: String(describing: MoviePreviewCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: MoviePreviewCollectionViewCell.self))
    }
}

extension DashboardViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: MoviePreviewCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: MoviePreviewCollectionViewCell.self), for: indexPath) as! MoviePreviewCollectionViewCell
        cell.setUpData(entity: viewModel.movieList[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.movieList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        navigationController?.pushViewController(CustomRouter.detailMoviesViewController(entity: viewModel.movieList[indexPath.row]), animated: true)
        collectionView.deselectItem(at: indexPath, animated: true)
    }
    
    @objc func onPreviewImageShouldChanged() {
        viewModel.shouldChangePreview()
    }
}

extension DashboardViewController: DashboardViewModelDelegate {
    func shouldChangePreview(entity: MovieUIEntity) {
        previewImage.loadFrom(imgUrl: "https://image.tmdb.org/t/p/original/\(entity.backdropPath)")
        previewName.text = entity.title
    }
    
    func successLoadCategoryList() {
        trendingCollectionView.reloadData()
        Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(onPreviewImageShouldChanged), userInfo: nil, repeats: true)
    }
    
    func onError(message: String) {
        print(message)
    }
}
