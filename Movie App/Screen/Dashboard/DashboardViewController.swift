//
//  DashboardViewController.swift
//  Movie App
//
//  Created by Tivo Yudha on 22/04/22.
//

import UIKit

class DashboardViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    private var viewModel: DashboardViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = DashboardViewModel.init(viewModelProtocol: self)
        setUpCollectionView()
        
        viewModel.getCategoryData()
    }
    
    private func setUpCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(UINib(nibName: String(describing: CategoryCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: CategoryCollectionViewCell.self))
    }
}

extension DashboardViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: CategoryCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: CategoryCollectionViewCell.self), for: indexPath) as! CategoryCollectionViewCell
        cell.setUpData(entity: viewModel.list[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.list.count
    }
}

extension DashboardViewController: DashboardViewModelProtocol {
    func successLoadCategoryList() {
        collectionView.reloadData()
    }
    
    func onError(message: String) {
        print(message)
    }
}
