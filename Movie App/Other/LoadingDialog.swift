//
//  LoadingDialog.swift
//  Movie App
//
//  Created by Tivo Yudha on 28/04/22.
//

import Foundation
import UIKit

class LoadingDialog {
    
    static func buildLoadingDialog() -> UIAlertController {
        let alert = UIAlertController(title: nil, message: "Please wait...", preferredStyle: .alert)

        let loadingIndicator = UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 50, height: 50))
        loadingIndicator.hidesWhenStopped = true
        loadingIndicator.style = UIActivityIndicatorView.Style.medium
        loadingIndicator.startAnimating();

        alert.view.addSubview(loadingIndicator)
        return alert
    }
}
