//
//  AppNavigationViewController.swift
//  neuralNetwork
//
//  Created by Przemyslaw Biskup on 09/01/2018.
//  Copyright © 2018 Przemyslaw Biskup. All rights reserved.
//

import UIKit

class AppNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = #imageLiteral(resourceName: "navigation")
        let newX = self.navigationBar.frame.size.width
        let statusHi = UIApplication.shared.statusBarFrame.height
        let newY = self.navigationBar.frame.size.height + statusHi
        let rect = CGRect(x: 0, y: 0, width: newX, height: newY)
        print(rect.size)
        print(rect)
        print(view.frame.size)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 1.0)
        image.draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        self.navigationBar.setBackgroundImage(newImage, for: .default)
        self.navigationBar.tintColor = UIColor.brown
//        self.navigationBar.barTintColor = UIColor.yellow
        self.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.brown, NSAttributedStringKey.font: UIFont.AppLight]
//        UIApplication.shared.isStatusBarHidden = true
//        setNeedsStatusBarAppearanceUpdate()
        
    }
    
//    override var preferredStatusBarStyle: UIStatusBarStyle {
//        return .lightContent
//    }
//    override var prefersStatusBarHidden: Bool {
//        return true
//    }
}
