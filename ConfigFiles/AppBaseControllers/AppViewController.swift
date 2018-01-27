//
//  AppViewController.swift
//  neuralNetwork
//
//  Created by Przemyslaw Biskup on 07/01/2018.
//  Copyright © 2018 Przemyslaw Biskup. All rights reserved.
//

import UIKit

class AppViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let barButton = UIBarButtonItem(title: "XXX", style: .plain, target: self, action: #selector(menuAction))
        self.navigationItem.setRightBarButton(barButton, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        AppSounds.didAppear.play()
    }
    
    @objc
    private func menuAction() {
        if let mainController = self.navigationController?.tabBarController as? MainController {
            mainController.showHideMenu()
        }
    }
}
