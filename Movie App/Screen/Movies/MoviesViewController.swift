//
//  MoviesViewController.swift
//  Movie App
//
//  Created by Tivo Yudha on 27/04/22.
//

import UIKit

class MoviesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var categoryEntity: CategoryUIEntity!
    private var viewModel: MoviesViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = MoviesViewModel(delegate: self)
        viewModel.categoryEntity = categoryEntity
        
        setUpTableView()
        viewModel.getMoviesByCategory()
    }
    
    func setUpTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(UINib(nibName: String(describing: MoviesTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: MoviesTableViewCell.self))
    }
}

extension MoviesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MoviesTableViewCell = tableView.dequeueReusableCell(withIdentifier: String(describing: MoviesTableViewCell.self), for: indexPath) as! MoviesTableViewCell
        cell.delegate = self
        cell.setUpData(entity: viewModel.list[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

extension MoviesViewController: MoviesViewModelDelegate {
    func onSuccessLoadData() {
        tableView.reloadData()
    }
    
    func onError(message: String) {
        print(message)
    }
}

extension MoviesViewController: MoviesTableViewCellDelegate {
    func onOpenDetailClicked(entity: MovieUIEntity) {
        
    }
}
