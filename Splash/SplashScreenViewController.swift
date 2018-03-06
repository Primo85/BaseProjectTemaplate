//
//  SplashScreenViewController.swift
//  zxzx
//
//  Created by Przemyslaw Biskup on 04/03/2018.
//  Copyright © 2018 Przemyslaw Biskup. All rights reserved.
//

import UIKit

protocol SplashScreenViewControllerDelegate {
    func splashScreen(_: SplashScreenViewController, didEndAnimated: Bool)
}

final class SplashScreenViewController: AppViewController {
    
    var delegate: SplashScreenViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 3.6, animations: {
            self.view.backgroundColor = .white
        }, completion: { _ in
            self.delegate?.splashScreen(self, didEndAnimated: true)
        })
    }
}
