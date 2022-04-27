//
//  MoviesViewModel.swift
//  Movie App
//
//  Created by Tivo Yudha on 27/04/22.
//

import Foundation

class MoviesViewModel {
    
    private var delegate: MoviesViewModelDelegate!
    
    init (delegate: MoviesViewModelDelegate) {
        self.delegate = delegate
    }
    
    var list: [MovieUIEntity] = []
    var categoryEntity: CategoryUIEntity!
    
    func getMoviesByCategory() {
        GetMoviesByCategoryObservableBuilder.shared.setParams(categoryId: categoryEntity.id).execute { entity in
            self.list.removeAll()
            self.list.append(contentsOf: entity.results.map({ MovieMapper.map(entity: $0) }))
            self.delegate?.onSuccessLoadData()
        } failed: { message in
            self.delegate.onError(message: message)
        }
    }
}
