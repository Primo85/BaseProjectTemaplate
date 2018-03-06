//
//  AppDelegate.swift
//  AppLoverBaseProject xcode template
//
//  Created by Przemyslaw Biskup on 07/01/2018.
//  Copyright © 2018 Przemyslaw Biskup. All rights reserved.
//

import UIKit

final class AppCoordynator {
    
    private let window: UIWindow
    private let mainController: UINavigationController
    private let rootController = UIViewController()
    
    init(window: UIWindow, mainController: UINavigationController) {
        self.window = window
        self.mainController = mainController
        
        mainController.navigationBar.isHidden = true
        mainController.viewControllers = [rootController]
        
        window.rootViewController = mainController
        window.backgroundColor = .black
        window.makeKeyAndVisible()
        
    }
    
    func startApplication() {
        showSplash()
    }
    
    private func showSplash() {
        let splashVC = SplashScreenViewController()
        splashVC.delegate = self
        splashVC.modalTransitionStyle = .crossDissolve
        mainController.show(splashVC, sender: nil)
    }
    
    private func showLogin() {
        let loginVC = LoginViewController()
        loginVC.modalTransitionStyle = .crossDissolve
        mainController.show(loginVC, sender: nil)
    }
}

extension AppCoordynator: SplashScreenViewControllerDelegate {
    func splashScreen(_: SplashScreenViewController, didEndAnimated: Bool) {
        showLogin()
    }
}
