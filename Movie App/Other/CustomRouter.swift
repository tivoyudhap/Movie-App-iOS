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
}
