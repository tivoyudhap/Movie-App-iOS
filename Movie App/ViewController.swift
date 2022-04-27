//
//  ViewController.swift
//  Movie App
//
//  Created by Tivo Yudha on 22/04/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(onGoToDashboard), userInfo: nil, repeats: false)
    }
    
    @objc func onGoToDashboard() {
    }
}

