//
//  SplashViewController.swift
//  Movie App
//
//  Created by Tivo Yudha on 28/04/22.
//

import UIKit

class SplashViewController: UIViewController {
    
    private var viewModel: SplashViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = SplashViewModel(delegate: self)
    }
    
    @IBAction func onGuestClicked(_ sender: Any) {
        present(LoadingDialog.buildLoadingDialog(), animated: true)
        viewModel.requestGuestAuthentication()
    }
}

extension SplashViewController: SplashViewModelDelegate {
    func successAuth() {
        dismiss(animated: true)
        navigationController?.pushViewController(CustomRouter.dashboardViewController(), animated: true)
    }
    
    func failed(message: String) {
        print(message)
    }
}
