//
//  ViewExtension.swift
//  Movie App
//
//  Created by Tivo Yudha on 27/04/22.
//

import Foundation
import UIKit

extension UIImageView {
    func loadFrom(imgUrl: String) {
        guard let url = URL(string: imgUrl) else {
            return
        }
        
        DispatchQueue.main.async { [weak self] in
            if let imageData = try? Data(contentsOf: url) {
                if let loadedImage = UIImage(data: imageData) {
                        self?.image = loadedImage
                }
            }
        }
    }
}
