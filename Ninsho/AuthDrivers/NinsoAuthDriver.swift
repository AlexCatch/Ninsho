//
//  AuthDriver.swift
//  Ninsho
//
//  Created by Alex Catchpole on 05/05/2019.
//  Copyright © 2019 Alex Catchpole. All rights reserved.
//

import Foundation

public protocol NinsoAuthDriver {
    /// Check the validity of the current auth information
    ///
    /// - Returns: Bool
    func check() -> Bool
    
    /// Store information required for authentication
    ///
    /// - Parameter authInformation: The information to store, could be anything (a token, user credentials etc)
    func storeAuthInformation(authInformation: Any)
    
    /// Get the current logged in user
    ///
    /// - Returns: NinsoAuthUser
    func getUser() -> NinsoAuthUser
    
    /// Store the current user
    ///
    /// - Parameter user: NinsoAuthUser
    func storeUser(user: NinsoAuthUser)
}
