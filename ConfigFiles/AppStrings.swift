//
//  AppStrings.swift
//  fonttest
//
//  Created by Przemyslaw Biskup on 05/01/2018.
//  Copyright © 2018 Przemyslaw Biskup. All rights reserved.
//

import Foundation

extension String {
    /// localized() -> String
    ///
    /// - Returns: NSLocalizedString(self, comment: "")
    func localized() -> String {
        let newString = NSLocalizedString(self, comment: "")
        return newString
    }
}
