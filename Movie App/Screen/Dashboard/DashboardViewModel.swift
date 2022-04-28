//
//  DashboardViewModel.swift
//  Movie App
//
//  Created by Tivo Yudha on 24/04/22.
//

import Foundation

class DashboardViewModel {
    
    private var viewModelProtocol: DashboardViewModelDelegate!
    private var index: Int = -1
    
    var list: [CategoryUIEntity] = []
    var movieList: [MovieUIEntity] = []
    
    init (viewModelProtocol: DashboardViewModelDelegate) {
        self.viewModelProtocol = viewModelProtocol
    }
    
    func getTrendingMovie() {
        GetTrendingMovieObservableBuilder.shared.execute { entity in
            self.movieList.removeAll()
            self.movieList.append(contentsOf: entity.results.map({
                MovieMapper.map(entity: $0)
            }))
            self.viewModelProtocol.successLoadCategoryList()
        } failed: { message in
            self.viewModelProtocol.onError(message: message)
        }
    }
    
    func getCategoryData() {
        GetCategoryObservableBuilder.shared.execute { entity in
            self.list.removeAll()
            self.list.append(contentsOf: entity.genres.map({
                CategoryMapper.map(entity: $0)
            }))
            self.viewModelProtocol.successLoadCategoryList()
        } failed: { message in
            self.viewModelProtocol.onError(message: message)
        }
    }
    
    func shouldChangePreview() {
        index += 1
        if (index >= movieList.count) {
            index = 0
        }
        
        viewModelProtocol.shouldChangePreview(entity: movieList[index])
    }
}
