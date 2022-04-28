//
//  CustomRouter.swift
//  Movie App
//
//  Created by Tivo Yudha on 27/04/22.
//

import Foundation
import UIKit

class CustomRouter {
    
    static func moviesViewController(entity: CategoryUIEntity) -> UIViewController {
        let viewController: MoviesViewController = MoviesViewController()
        viewController.categoryEntity = entity
        return viewController
    }
    
    static func dashboardViewController() -> UIViewController {
        let viewController: DashboardViewController = DashboardViewController()
        return viewController
    }
    
    static func detailMoviesViewController(entity: MovieUIEntity) -> UIViewController {
        let viewController: DetailMovieViewController = DetailMovieViewController()
        viewController.entity = entity
        return viewController
    }
}
