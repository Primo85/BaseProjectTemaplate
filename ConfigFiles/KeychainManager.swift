//
//  KeychainManager.swift
//  AppLoverBaseProject xcode template
//
//  Created by Przemyslaw Biskup on 07/01/2018.
//  Copyright © 2018 Przemyslaw Biskup. All rights reserved.
//

import Foundation

final class KeychainManager: NSObject {
    
    static let shared = KeychainManager()
    
    private let defaults = UserDefaults.standard
    
    private override init() {
        super.init()
    }
    
    @objc var isOnboardingCompleted: Bool {
        get {
            return defaults.bool(forKey: #keyPath(KeychainManager.isOnboardingCompleted))
        }
        set {
            defaults.set(newValue, forKey: #keyPath(KeychainManager.isOnboardingCompleted))
        }
    }
}
