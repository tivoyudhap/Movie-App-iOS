//
//  DashboardViewModel.swift
//  Movie App
//
//  Created by Tivo Yudha on 24/04/22.
//

import Foundation

class DashboardViewModel {
    
    private var viewModelProtocol: DashboardViewModelDelegate!
    
    var list: [CategoryUIEntity] = []
    
    init (viewModelProtocol: DashboardViewModelDelegate) {
        self.viewModelProtocol = viewModelProtocol
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
}
